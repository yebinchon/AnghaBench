
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int devfn; int bus; } ;
struct physdev_pci_device_add {unsigned long long* optarr; int is_virtfn; int is_extfn; int devfn; int bus; TYPE_1__ physfn; int flags; scalar_t__ seg; } ;
struct physdev_manage_pci_ext {unsigned long long* optarr; int is_virtfn; int is_extfn; int devfn; int bus; TYPE_1__ physfn; int flags; scalar_t__ seg; } ;
struct physdev_manage_pci {unsigned long long* optarr; int is_virtfn; int is_extfn; int devfn; int bus; TYPE_1__ physfn; int flags; scalar_t__ seg; } ;
struct pci_dev {int devfn; struct pci_bus* bus; scalar_t__ is_virtfn; int dev; struct pci_dev* physfn; } ;
struct pci_bus {int number; struct pci_bus* parent; int * bridge; } ;
struct device {int dummy; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_handle ;


 scalar_t__ ACPI_HANDLE (int *) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ENOSYS ;
 int HYPERVISOR_physdev_op (int ,struct physdev_pci_device_add*) ;
 scalar_t__ PCI_SLOT (int ) ;
 int PHYSDEVOP_manage_pci_add ;
 int PHYSDEVOP_manage_pci_add_ext ;
 int PHYSDEVOP_pci_device_add ;
 int XEN_PCI_DEV_EXTFN ;
 int XEN_PCI_DEV_PXM ;
 int XEN_PCI_DEV_VIRTFN ;
 int acpi_evaluate_integer (scalar_t__,char*,int *,unsigned long long*) ;
 int acpi_get_parent (scalar_t__,scalar_t__*) ;
 scalar_t__ acpi_pci_get_bridge_handle (struct pci_bus*) ;
 scalar_t__ pci_ari_enabled (struct pci_bus*) ;
 scalar_t__ pci_domain_nr (struct pci_bus*) ;
 int pci_seg_supported ;
 struct pci_dev* to_pci_dev (struct device*) ;
 int xen_mcfg_late () ;

__attribute__((used)) static int xen_add_device(struct device *dev)
{
 int r;
 struct pci_dev *pci_dev = to_pci_dev(dev);
 if (pci_seg_supported) {
  struct {
   struct physdev_pci_device_add add;
   uint32_t pxm;
  } add_ext = {
   .add.seg = pci_domain_nr(pci_dev->bus),
   .add.bus = pci_dev->bus->number,
   .add.devfn = pci_dev->devfn
  };
  struct physdev_pci_device_add *add = &add_ext.add;
  if (pci_ari_enabled(pci_dev->bus) && PCI_SLOT(pci_dev->devfn))
   add->flags = XEN_PCI_DEV_EXTFN;
  r = HYPERVISOR_physdev_op(PHYSDEVOP_pci_device_add, add);
  if (r != -ENOSYS)
   return r;
  pci_seg_supported = 0;
 }

 if (pci_domain_nr(pci_dev->bus))
  r = -ENOSYS;
 else if (pci_ari_enabled(pci_dev->bus) && PCI_SLOT(pci_dev->devfn)) {
  struct physdev_manage_pci_ext manage_pci_ext = {
   .bus = pci_dev->bus->number,
   .devfn = pci_dev->devfn,
   .is_extfn = 1,
  };

  r = HYPERVISOR_physdev_op(PHYSDEVOP_manage_pci_add_ext,
   &manage_pci_ext);
 } else {
  struct physdev_manage_pci manage_pci = {
   .bus = pci_dev->bus->number,
   .devfn = pci_dev->devfn,
  };

  r = HYPERVISOR_physdev_op(PHYSDEVOP_manage_pci_add,
   &manage_pci);
 }

 return r;
}
