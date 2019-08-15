function get_data_filename(){
  if[ $# -ne 2 ];then
      echo "userage: get date_filename \$inputfile \$outputfile"
      exit
  fi

  inputfile=$1
  outputfile=$2
  temp="${outputfile}.temp"

  while read line
  do
      loc1=0
      loc2=0
      str=$line
      get_substr_locate "$str" loc1 loc2

      length=$((${loc2}-${loc1}))
      if[ $length -gt 0 ];then
          words=echo ${str:${loc1}:${length}} | awk -F '' '{print NF}'
}