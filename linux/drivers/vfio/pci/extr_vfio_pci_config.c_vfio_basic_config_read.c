
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct vfio_pci_device {int * vconfig; TYPE_1__* pdev; } ;
struct perm_bits {int dummy; } ;
typedef int __le32 ;
typedef int __le16 ;
struct TYPE_2__ {scalar_t__ is_virtfn; } ;


 int PCI_COMMAND ;
 int PCI_COMMAND_MEMORY ;
 int cpu_to_le32 (int) ;
 scalar_t__ is_bar (int) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int vfio_bar_fixup (struct vfio_pci_device*) ;
 int vfio_default_config_read (struct vfio_pci_device*,int,int,struct perm_bits*,int,int *) ;

__attribute__((used)) static int vfio_basic_config_read(struct vfio_pci_device *vdev, int pos,
      int count, struct perm_bits *perm,
      int offset, __le32 *val)
{
 if (is_bar(offset))
  vfio_bar_fixup(vdev);

 count = vfio_default_config_read(vdev, pos, count, perm, offset, val);


 if (offset == PCI_COMMAND && vdev->pdev->is_virtfn) {
  u16 cmd = le16_to_cpu(*(__le16 *)&vdev->vconfig[PCI_COMMAND]);
  u32 tmp_val = le32_to_cpu(*val);

  tmp_val |= cmd & PCI_COMMAND_MEMORY;
  *val = cpu_to_le32(tmp_val);
 }

 return count;
}
