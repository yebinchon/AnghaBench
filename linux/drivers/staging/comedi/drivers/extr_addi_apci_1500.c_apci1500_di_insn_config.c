
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;


 int EINVAL ;

 int apci1500_di_cfg_trig (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*) ;

__attribute__((used)) static int apci1500_di_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 switch (data[0]) {
 case 128:
  return apci1500_di_cfg_trig(dev, s, insn, data);
 default:
  return -EINVAL;
 }
}
