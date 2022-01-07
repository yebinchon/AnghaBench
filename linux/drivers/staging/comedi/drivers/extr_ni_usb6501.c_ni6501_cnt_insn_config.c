
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 int EINVAL ;



 int START_COUNTER ;
 int STOP_COUNTER ;
 int WRITE_COUNTER ;
 int ni6501_counter_command (struct comedi_device*,int ,int *) ;

__attribute__((used)) static int ni6501_cnt_insn_config(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 int ret;
 u32 val = 0;

 switch (data[0]) {
 case 130:
  ret = ni6501_counter_command(dev, START_COUNTER, ((void*)0));
  break;
 case 129:
  ret = ni6501_counter_command(dev, STOP_COUNTER, ((void*)0));
  break;
 case 128:
  ret = ni6501_counter_command(dev, STOP_COUNTER, ((void*)0));
  if (ret)
   break;
  ret = ni6501_counter_command(dev, WRITE_COUNTER, &val);
  break;
 default:
  return -EINVAL;
 }

 return ret ? ret : insn->n;
}
