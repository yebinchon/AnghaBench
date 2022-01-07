
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_host_bridge {scalar_t__ native_pme; scalar_t__ native_aer; scalar_t__ native_pcie_hotplug; } ;
struct pci_dev {scalar_t__ aer_cap; scalar_t__ is_hotplug_bridge; int bus; } ;


 int PCIE_PORT_SERVICE_AER ;
 int PCIE_PORT_SERVICE_BWNOTIF ;
 int PCIE_PORT_SERVICE_DPC ;
 int PCIE_PORT_SERVICE_HP ;
 int PCIE_PORT_SERVICE_PME ;
 int PCI_EXP_SLTCTL ;
 int PCI_EXP_SLTCTL_CCIE ;
 int PCI_EXP_SLTCTL_HPIE ;
 scalar_t__ PCI_EXP_TYPE_DOWNSTREAM ;
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ;
 int PCI_EXT_CAP_ID_DPC ;
 scalar_t__ pci_aer_available () ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 scalar_t__ pci_find_ext_capability (struct pci_dev*,int ) ;
 struct pci_host_bridge* pci_find_host_bridge (int ) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;
 int pcie_capability_clear_word (struct pci_dev*,int ,int) ;
 int pcie_pme_interrupt_enable (struct pci_dev*,int) ;
 scalar_t__ pcie_ports_native ;

__attribute__((used)) static int get_port_device_capability(struct pci_dev *dev)
{
 struct pci_host_bridge *host = pci_find_host_bridge(dev->bus);
 int services = 0;

 if (dev->is_hotplug_bridge &&
     (pcie_ports_native || host->native_pcie_hotplug)) {
  services |= PCIE_PORT_SERVICE_HP;





  pcie_capability_clear_word(dev, PCI_EXP_SLTCTL,
     PCI_EXP_SLTCTL_CCIE | PCI_EXP_SLTCTL_HPIE);
 }
 if (pci_pcie_type(dev) == PCI_EXP_TYPE_ROOT_PORT &&
     (pcie_ports_native || host->native_pme)) {
  services |= PCIE_PORT_SERVICE_PME;






  pcie_pme_interrupt_enable(dev, 0);
 }

 if (pci_find_ext_capability(dev, PCI_EXT_CAP_ID_DPC) &&
     pci_aer_available() && services & PCIE_PORT_SERVICE_AER)
  services |= PCIE_PORT_SERVICE_DPC;

 if (pci_pcie_type(dev) == PCI_EXP_TYPE_DOWNSTREAM ||
     pci_pcie_type(dev) == PCI_EXP_TYPE_ROOT_PORT)
  services |= PCIE_PORT_SERVICE_BWNOTIF;

 return services;
}
