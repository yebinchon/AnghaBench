
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_device {int pdev; } ;
struct perm_bits {int dummy; } ;
typedef int __le32 ;


 int vfio_user_config_read (int ,int,int *,int) ;

__attribute__((used)) static int vfio_raw_config_read(struct vfio_pci_device *vdev, int pos,
    int count, struct perm_bits *perm,
    int offset, __le32 *val)
{
 int ret;

 ret = vfio_user_config_read(vdev->pdev, pos, val, count);
 if (ret)
  return ret;

 return count;
}
