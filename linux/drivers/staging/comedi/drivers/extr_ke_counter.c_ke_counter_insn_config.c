
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;


 int EINVAL ;
 scalar_t__ KE_OSC_SEL_REG ;
 unsigned char inb (scalar_t__) ;
 int ke_counter_reset (struct comedi_device*) ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static int ke_counter_insn_config(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 unsigned char src;

 switch (data[0]) {
 case 134:
  switch (data[1]) {
  case 133:
   src = 130;
   break;
  case 132:
   src = 129;
   break;
  case 131:
   src = 128;
   break;
  default:
   return -EINVAL;
  }
  outb(src, dev->iobase + KE_OSC_SEL_REG);
  break;
 case 136:
  src = inb(dev->iobase + KE_OSC_SEL_REG);
  switch (src) {
  case 130:
   data[1] = 133;
   data[2] = 50;
   break;
  case 129:
   data[1] = 132;
   data[2] = 250;
   break;
  case 128:
   data[1] = 131;
   data[2] = 0;
   break;
  default:
   return -EINVAL;
  }
  break;
 case 135:
  ke_counter_reset(dev);
  break;
 default:
  return -EINVAL;
 }

 return insn->n;
}
