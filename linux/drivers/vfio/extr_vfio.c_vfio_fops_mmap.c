
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct vfio_iommu_driver {TYPE_1__* ops; } ;
struct vfio_container {int iommu_data; struct vfio_iommu_driver* iommu_driver; } ;
struct file {struct vfio_container* private_data; } ;
struct TYPE_2__ {int (* mmap ) (int ,struct vm_area_struct*) ;} ;


 int EINVAL ;
 scalar_t__ likely (int ) ;
 int stub1 (int ,struct vm_area_struct*) ;

__attribute__((used)) static int vfio_fops_mmap(struct file *filep, struct vm_area_struct *vma)
{
 struct vfio_container *container = filep->private_data;
 struct vfio_iommu_driver *driver;
 int ret = -EINVAL;

 driver = container->iommu_driver;
 if (likely(driver && driver->ops->mmap))
  ret = driver->ops->mmap(container->iommu_data, vma);

 return ret;
}
