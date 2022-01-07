
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ENOTTY ;
 int might_sleep () ;
 int pci_af_flr (struct pci_dev*,int) ;
 int pci_dev_reset_slot_function (struct pci_dev*,int) ;
 int pci_dev_specific_reset (struct pci_dev*,int) ;
 int pci_parent_bus_reset (struct pci_dev*,int) ;
 int pci_pm_reset (struct pci_dev*,int) ;
 scalar_t__ pcie_has_flr (struct pci_dev*) ;

int pci_probe_reset_function(struct pci_dev *dev)
{
 int rc;

 might_sleep();

 rc = pci_dev_specific_reset(dev, 1);
 if (rc != -ENOTTY)
  return rc;
 if (pcie_has_flr(dev))
  return 0;
 rc = pci_af_flr(dev, 1);
 if (rc != -ENOTTY)
  return rc;
 rc = pci_pm_reset(dev, 1);
 if (rc != -ENOTTY)
  return rc;
 rc = pci_dev_reset_slot_function(dev, 1);
 if (rc != -ENOTTY)
  return rc;

 return pci_parent_bus_reset(dev, 1);
}
