
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_device {scalar_t__ vconfig; } ;
struct perm_bits {int dummy; } ;
typedef int __le32 ;


 int memcpy (int *,scalar_t__,int) ;

__attribute__((used)) static int vfio_virt_config_read(struct vfio_pci_device *vdev, int pos,
     int count, struct perm_bits *perm,
     int offset, __le32 *val)
{
 memcpy(val, vdev->vconfig + pos, count);
 return count;
}
