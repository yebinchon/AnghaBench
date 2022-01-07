
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_pci_device {unsigned int num_ctx; } ;
typedef int int32_t ;


 int EINVAL ;
 int vfio_msi_set_vector_signal (struct vfio_pci_device*,int,int,int) ;

__attribute__((used)) static int vfio_msi_set_block(struct vfio_pci_device *vdev, unsigned start,
         unsigned count, int32_t *fds, bool msix)
{
 int i, j, ret = 0;

 if (start >= vdev->num_ctx || start + count > vdev->num_ctx)
  return -EINVAL;

 for (i = 0, j = start; i < count && !ret; i++, j++) {
  int fd = fds ? fds[i] : -1;
  ret = vfio_msi_set_vector_signal(vdev, j, fd, msix);
 }

 if (ret) {
  for (--j; j >= (int)start; j--)
   vfio_msi_set_vector_signal(vdev, j, -1, msix);
 }

 return ret;
}
