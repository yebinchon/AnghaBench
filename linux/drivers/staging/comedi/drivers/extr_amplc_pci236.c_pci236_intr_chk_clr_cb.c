
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pc236_private {int enable_irq; scalar_t__ lcr_iobase; } ;
struct comedi_device {struct pc236_private* private; } ;


 scalar_t__ PLX9052_INTCSR ;
 int PLX9052_INTCSR_LI1STAT ;
 int inl (scalar_t__) ;
 int pci236_intr_update_cb (struct comedi_device*,int ) ;

__attribute__((used)) static bool pci236_intr_chk_clr_cb(struct comedi_device *dev)
{
 struct pc236_private *devpriv = dev->private;


 if (!(inl(devpriv->lcr_iobase + PLX9052_INTCSR) &
       PLX9052_INTCSR_LI1STAT))
  return 0;

 pci236_intr_update_cb(dev, devpriv->enable_irq);
 return 1;
}
