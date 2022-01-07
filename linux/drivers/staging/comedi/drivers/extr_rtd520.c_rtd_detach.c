
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtd_private {scalar_t__ lcfg; scalar_t__ las1; } ;
struct comedi_device {scalar_t__ mmio; scalar_t__ irq; struct rtd_private* private; } ;


 int comedi_pci_disable (struct comedi_device*) ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int iounmap (scalar_t__) ;
 int rtd_reset (struct comedi_device*) ;

__attribute__((used)) static void rtd_detach(struct comedi_device *dev)
{
 struct rtd_private *devpriv = dev->private;

 if (devpriv) {

  if (dev->mmio && devpriv->lcfg)
   rtd_reset(dev);
  if (dev->irq)
   free_irq(dev->irq, dev);
  if (dev->mmio)
   iounmap(dev->mmio);
  if (devpriv->las1)
   iounmap(devpriv->las1);
  if (devpriv->lcfg)
   iounmap(devpriv->lcfg);
 }
 comedi_pci_disable(dev);
}
