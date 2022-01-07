
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct cb_pcimdas_private* private; } ;
struct cb_pcimdas_private {scalar_t__ BADR3; } ;


 int EINVAL ;
 unsigned int I8254_OSC_BASE_100KHZ ;


 unsigned int PCIMDAS_USER_CNTR_CTR1_CLK_SEL ;
 scalar_t__ PCIMDAS_USER_CNTR_REG ;
 unsigned int inb (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static int cb_pcimdas_counter_insn_config(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 struct cb_pcimdas_private *devpriv = dev->private;
 unsigned int ctrl;

 switch (data[0]) {
 case 128:
  switch (data[1]) {
  case 0:
   ctrl = PCIMDAS_USER_CNTR_CTR1_CLK_SEL;
   break;
  case 1:
   ctrl = 0;
   break;
  default:
   return -EINVAL;
  }
  outb(ctrl, devpriv->BADR3 + PCIMDAS_USER_CNTR_REG);
  break;
 case 129:
  ctrl = inb(devpriv->BADR3 + PCIMDAS_USER_CNTR_REG);
  if (ctrl & PCIMDAS_USER_CNTR_CTR1_CLK_SEL) {
   data[1] = 0;
   data[2] = I8254_OSC_BASE_100KHZ;
  } else {
   data[1] = 1;
   data[2] = 0;
  }
  break;
 default:
  return -EINVAL;
 }

 return insn->n;
}
