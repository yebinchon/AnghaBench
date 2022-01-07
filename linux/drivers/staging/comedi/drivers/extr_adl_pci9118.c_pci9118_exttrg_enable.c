
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci9118_private {int int_ctrl; } ;
struct comedi_device {scalar_t__ iobase; struct pci9118_private* private; } ;


 int PCI9118_INT_CTRL_DTRG ;
 scalar_t__ PCI9118_INT_CTRL_REG ;
 int outl (int,scalar_t__) ;
 int pci9118_amcc_int_ena (struct comedi_device*,int) ;

__attribute__((used)) static void pci9118_exttrg_enable(struct comedi_device *dev, bool enable)
{
 struct pci9118_private *devpriv = dev->private;

 if (enable)
  devpriv->int_ctrl |= PCI9118_INT_CTRL_DTRG;
 else
  devpriv->int_ctrl &= ~PCI9118_INT_CTRL_DTRG;
 outl(devpriv->int_ctrl, dev->iobase + PCI9118_INT_CTRL_REG);

 if (devpriv->int_ctrl)
  pci9118_amcc_int_ena(dev, 1);
 else
  pci9118_amcc_int_ena(dev, 0);
}
