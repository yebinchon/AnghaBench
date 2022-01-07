
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci224_private {int ao_scan_order; int ao_scan_vals; } ;
struct comedi_device {struct pci224_private* private; } ;


 int comedi_pci_detach (struct comedi_device*) ;
 int kfree (int ) ;

__attribute__((used)) static void pci224_detach(struct comedi_device *dev)
{
 struct pci224_private *devpriv = dev->private;

 comedi_pci_detach(dev);
 if (devpriv) {
  kfree(devpriv->ao_scan_vals);
  kfree(devpriv->ao_scan_order);
 }
}
