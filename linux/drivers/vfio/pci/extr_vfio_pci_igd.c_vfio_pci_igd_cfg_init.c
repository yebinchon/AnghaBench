
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_device {int dummy; } ;
struct pci_dev {int vendor; int class; int cfg_size; } ;


 int EINVAL ;
 int ENODEV ;
 int PCI_CLASS_BRIDGE_HOST ;
 int PCI_CLASS_BRIDGE_ISA ;
 int PCI_DEVFN (int,int ) ;
 int PCI_VENDOR_ID_INTEL ;
 int VFIO_REGION_INFO_FLAG_READ ;
 int VFIO_REGION_SUBTYPE_INTEL_IGD_HOST_CFG ;
 int VFIO_REGION_SUBTYPE_INTEL_IGD_LPC_CFG ;
 int VFIO_REGION_TYPE_PCI_VENDOR_TYPE ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_domain_bus_and_slot (int ,int ,int ) ;
 int vfio_pci_igd_cfg_regops ;
 int vfio_pci_register_dev_region (struct vfio_pci_device*,int,int ,int *,int ,int ,struct pci_dev*) ;

__attribute__((used)) static int vfio_pci_igd_cfg_init(struct vfio_pci_device *vdev)
{
 struct pci_dev *host_bridge, *lpc_bridge;
 int ret;

 host_bridge = pci_get_domain_bus_and_slot(0, 0, PCI_DEVFN(0, 0));
 if (!host_bridge)
  return -ENODEV;

 if (host_bridge->vendor != PCI_VENDOR_ID_INTEL ||
     host_bridge->class != (PCI_CLASS_BRIDGE_HOST << 8)) {
  pci_dev_put(host_bridge);
  return -EINVAL;
 }

 ret = vfio_pci_register_dev_region(vdev,
  PCI_VENDOR_ID_INTEL | VFIO_REGION_TYPE_PCI_VENDOR_TYPE,
  VFIO_REGION_SUBTYPE_INTEL_IGD_HOST_CFG,
  &vfio_pci_igd_cfg_regops, host_bridge->cfg_size,
  VFIO_REGION_INFO_FLAG_READ, host_bridge);
 if (ret) {
  pci_dev_put(host_bridge);
  return ret;
 }

 lpc_bridge = pci_get_domain_bus_and_slot(0, 0, PCI_DEVFN(0x1f, 0));
 if (!lpc_bridge)
  return -ENODEV;

 if (lpc_bridge->vendor != PCI_VENDOR_ID_INTEL ||
     lpc_bridge->class != (PCI_CLASS_BRIDGE_ISA << 8)) {
  pci_dev_put(lpc_bridge);
  return -EINVAL;
 }

 ret = vfio_pci_register_dev_region(vdev,
  PCI_VENDOR_ID_INTEL | VFIO_REGION_TYPE_PCI_VENDOR_TYPE,
  VFIO_REGION_SUBTYPE_INTEL_IGD_LPC_CFG,
  &vfio_pci_igd_cfg_regops, lpc_bridge->cfg_size,
  VFIO_REGION_INFO_FLAG_READ, lpc_bridge);
 if (ret) {
  pci_dev_put(lpc_bridge);
  return ret;
 }

 return 0;
}
