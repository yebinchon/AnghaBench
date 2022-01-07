
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; int d3cold_allowed; scalar_t__ no_d3cold; } ;


 int PCI_D3cold ;
 scalar_t__ device_may_wakeup (int *) ;
 int pci_pme_capable (struct pci_dev*,int ) ;
 int pci_power_manageable (struct pci_dev*) ;

__attribute__((used)) static int pci_dev_check_d3cold(struct pci_dev *dev, void *data)
{
 bool *d3cold_ok = data;

 if (
     dev->no_d3cold || !dev->d3cold_allowed ||


     (device_may_wakeup(&dev->dev) &&
      !pci_pme_capable(dev, PCI_D3cold)) ||


     !pci_power_manageable(dev))

  *d3cold_ok = 0;

 return !*d3cold_ok;
}
