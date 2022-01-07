
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct me_private_data {scalar_t__ plx_regbase; } ;
struct comedi_device {scalar_t__ mmio; struct me_private_data* private; } ;


 int comedi_pci_detach (struct comedi_device*) ;
 int iounmap (scalar_t__) ;
 int me_reset (struct comedi_device*) ;

__attribute__((used)) static void me_detach(struct comedi_device *dev)
{
 struct me_private_data *devpriv = dev->private;

 if (devpriv) {
  if (dev->mmio)
   me_reset(dev);
  if (devpriv->plx_regbase)
   iounmap(devpriv->plx_regbase);
 }
 comedi_pci_detach(dev);
}
