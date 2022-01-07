
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci1710_private {int ctrl; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; int pacer; struct pci1710_private* private; } ;


 scalar_t__ PCI171X_CLRFIFO_REG ;
 scalar_t__ PCI171X_CLRINT_REG ;
 int PCI171X_CTRL_CNT0 ;
 scalar_t__ PCI171X_CTRL_REG ;
 int comedi_8254_pacer_enable (int ,int,int,int) ;
 int outb (int ,scalar_t__) ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static int pci1710_ai_cancel(struct comedi_device *dev,
        struct comedi_subdevice *s)
{
 struct pci1710_private *devpriv = dev->private;


 devpriv->ctrl &= PCI171X_CTRL_CNT0;
 outw(devpriv->ctrl, dev->iobase + PCI171X_CTRL_REG);


 comedi_8254_pacer_enable(dev->pacer, 1, 2, 0);


 outb(0, dev->iobase + PCI171X_CLRFIFO_REG);
 outb(0, dev->iobase + PCI171X_CLRINT_REG);

 return 0;
}
