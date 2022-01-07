
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {unsigned int n; } ;
struct comedi_device {int dummy; } ;


 int READ_COUNTER ;
 int ni6501_counter_command (struct comedi_device*,int ,unsigned int*) ;

__attribute__((used)) static int ni6501_cnt_insn_read(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{
 int ret;
 u32 val;
 unsigned int i;

 for (i = 0; i < insn->n; i++) {
  ret = ni6501_counter_command(dev, READ_COUNTER, &val);
  if (ret)
   return ret;
  data[i] = val;
 }

 return insn->n;
}
