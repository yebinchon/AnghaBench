
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci1710_private {int ctrl_ext; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; struct pci1710_private* private; } ;


 int EINVAL ;
 unsigned int I8254_OSC_BASE_1MHZ ;


 int PCI171X_CTRL_CNT0 ;
 scalar_t__ PCI171X_CTRL_REG ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int pci1710_counter_insn_config(struct comedi_device *dev,
           struct comedi_subdevice *s,
           struct comedi_insn *insn,
           unsigned int *data)
{
 struct pci1710_private *devpriv = dev->private;

 switch (data[0]) {
 case 128:
  switch (data[1]) {
  case 0:
   devpriv->ctrl_ext &= ~PCI171X_CTRL_CNT0;
   break;
  case 1:
   devpriv->ctrl_ext |= PCI171X_CTRL_CNT0;
   break;
  default:
   return -EINVAL;
  }
  outw(devpriv->ctrl_ext, dev->iobase + PCI171X_CTRL_REG);
  break;
 case 129:
  if (devpriv->ctrl_ext & PCI171X_CTRL_CNT0) {
   data[1] = 1;
   data[2] = 0;
  } else {
   data[1] = 0;
   data[2] = I8254_OSC_BASE_1MHZ;
  }
  break;
 default:
  return -EINVAL;
 }

 return insn->n;
}
