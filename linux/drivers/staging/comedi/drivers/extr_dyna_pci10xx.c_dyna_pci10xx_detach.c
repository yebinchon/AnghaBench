
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dyna_pci10xx_private {int mutex; } ;
struct comedi_device {struct dyna_pci10xx_private* private; } ;


 int comedi_pci_detach (struct comedi_device*) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void dyna_pci10xx_detach(struct comedi_device *dev)
{
 struct dyna_pci10xx_private *devpriv = dev->private;

 comedi_pci_detach(dev);
 if (devpriv)
  mutex_destroy(&devpriv->mutex);
}
