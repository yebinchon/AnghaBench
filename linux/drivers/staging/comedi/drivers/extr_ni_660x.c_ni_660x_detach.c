
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_660x_private {int mite; int counter_dev; } ;
struct comedi_device {scalar_t__ mmio; scalar_t__ irq; struct ni_660x_private* private; } ;


 int NI660X_GLOBAL_INT_CFG ;
 int comedi_pci_disable (struct comedi_device*) ;
 int free_irq (scalar_t__,struct comedi_device*) ;
 int iounmap (scalar_t__) ;
 int mite_detach (int ) ;
 int ni_660x_free_mite_rings (struct comedi_device*) ;
 int ni_660x_write (struct comedi_device*,int ,int ,int ) ;
 int ni_gpct_device_destroy (int ) ;

__attribute__((used)) static void ni_660x_detach(struct comedi_device *dev)
{
 struct ni_660x_private *devpriv = dev->private;

 if (dev->irq) {
  ni_660x_write(dev, 0, 0, NI660X_GLOBAL_INT_CFG);
  free_irq(dev->irq, dev);
 }
 if (devpriv) {
  ni_gpct_device_destroy(devpriv->counter_dev);
  ni_660x_free_mite_rings(dev);
  mite_detach(devpriv->mite);
 }
 if (dev->mmio)
  iounmap(dev->mmio);
 comedi_pci_disable(dev);
}
