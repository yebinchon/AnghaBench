
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_insn {int n; } ;


 int EINVAL ;





__attribute__((used)) static int check_insn_device_config_length(struct comedi_insn *insn,
        unsigned int *data)
{
 if (insn->n < 1)
  return -EINVAL;

 switch (data[0]) {
 case 128:
 case 131:
 case 130:
  if (insn->n == 3)
   return 0;
  break;
 case 129:





  if (insn->n >= 2)
   return 0;
  break;
 }
 return -EINVAL;
}
