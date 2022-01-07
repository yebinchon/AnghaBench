
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct vfio_pci_device {int bardirty; int * vconfig; struct pci_dev* pdev; } ;
struct pci_dev {TYPE_1__* resource; } ;
typedef int __le32 ;
struct TYPE_2__ {int flags; } ;


 int IORESOURCE_ROM_SHADOW ;
 size_t PCI_BASE_ADDRESS_0 ;
 int PCI_BASE_ADDRESS_MEM_TYPE_64 ;
 size_t PCI_ROM_ADDRESS ;
 int PCI_ROM_ADDRESS_ENABLE ;
 size_t PCI_ROM_RESOURCE ;
 int PCI_STD_RESOURCES ;
 int PCI_STD_RESOURCE_END ;
 int cpu_to_le32 (int ) ;
 int pci_resource_len (struct pci_dev*,size_t) ;
 scalar_t__ pci_resource_start (struct pci_dev*,size_t) ;
 int vfio_generate_bar_flags (struct pci_dev*,int) ;

__attribute__((used)) static void vfio_bar_fixup(struct vfio_pci_device *vdev)
{
 struct pci_dev *pdev = vdev->pdev;
 int i;
 __le32 *bar;
 u64 mask;

 bar = (__le32 *)&vdev->vconfig[PCI_BASE_ADDRESS_0];

 for (i = PCI_STD_RESOURCES; i <= PCI_STD_RESOURCE_END; i++, bar++) {
  if (!pci_resource_start(pdev, i)) {
   *bar = 0;
   continue;
  }

  mask = ~(pci_resource_len(pdev, i) - 1);

  *bar &= cpu_to_le32((u32)mask);
  *bar |= vfio_generate_bar_flags(pdev, i);

  if (*bar & cpu_to_le32(PCI_BASE_ADDRESS_MEM_TYPE_64)) {
   bar++;
   *bar &= cpu_to_le32((u32)(mask >> 32));
   i++;
  }
 }

 bar = (__le32 *)&vdev->vconfig[PCI_ROM_ADDRESS];






 if (pci_resource_start(pdev, PCI_ROM_RESOURCE)) {
  mask = ~(pci_resource_len(pdev, PCI_ROM_RESOURCE) - 1);
  mask |= PCI_ROM_ADDRESS_ENABLE;
  *bar &= cpu_to_le32((u32)mask);
 } else if (pdev->resource[PCI_ROM_RESOURCE].flags &
     IORESOURCE_ROM_SHADOW) {
  mask = ~(0x20000 - 1);
  mask |= PCI_ROM_ADDRESS_ENABLE;
  *bar &= cpu_to_le32((u32)mask);
 } else
  *bar = 0;

 vdev->bardirty = 0;
}
