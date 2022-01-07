
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_release_region (struct pci_dev*,int ) ;
 int piix4_pm_io_region ;
 int * piix4_poweroff ;
 int * pm_dev ;
 int * pm_power_off ;

__attribute__((used)) static void piix4_poweroff_remove(struct pci_dev *dev)
{
 if (pm_power_off == piix4_poweroff)
  pm_power_off = ((void*)0);

 pci_release_region(dev, piix4_pm_io_region);
 pm_dev = ((void*)0);
}
