
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;


 int DPM_FLAG_NEVER_SKIP ;
 int DPM_FLAG_SMART_SUSPEND ;
 int ENODEV ;
 scalar_t__ PCI_EXP_TYPE_DOWNSTREAM ;
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ;
 scalar_t__ PCI_EXP_TYPE_UPSTREAM ;
 int dev_pm_set_driver_flags (int *,int) ;
 scalar_t__ pci_bridge_d3_possible (struct pci_dev*) ;
 int pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pcie_port_device_register (struct pci_dev*) ;
 int pm_runtime_allow (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int pm_runtime_set_autosuspend_delay (int *,int) ;
 int pm_runtime_use_autosuspend (int *) ;

__attribute__((used)) static int pcie_portdrv_probe(struct pci_dev *dev,
     const struct pci_device_id *id)
{
 int status;

 if (!pci_is_pcie(dev) ||
     ((pci_pcie_type(dev) != PCI_EXP_TYPE_ROOT_PORT) &&
      (pci_pcie_type(dev) != PCI_EXP_TYPE_UPSTREAM) &&
      (pci_pcie_type(dev) != PCI_EXP_TYPE_DOWNSTREAM)))
  return -ENODEV;

 status = pcie_port_device_register(dev);
 if (status)
  return status;

 pci_save_state(dev);

 dev_pm_set_driver_flags(&dev->dev, DPM_FLAG_NEVER_SKIP |
        DPM_FLAG_SMART_SUSPEND);

 if (pci_bridge_d3_possible(dev)) {





  pm_runtime_set_autosuspend_delay(&dev->dev, 100);
  pm_runtime_use_autosuspend(&dev->dev);
  pm_runtime_mark_last_busy(&dev->dev);
  pm_runtime_put_autosuspend(&dev->dev);
  pm_runtime_allow(&dev->dev);
 }

 return 0;
}
