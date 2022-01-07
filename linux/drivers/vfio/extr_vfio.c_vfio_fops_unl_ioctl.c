
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_iommu_driver {TYPE_1__* ops; } ;
struct vfio_container {void* iommu_data; struct vfio_iommu_driver* iommu_driver; } ;
struct file {struct vfio_container* private_data; } ;
struct TYPE_2__ {long (* ioctl ) (void*,unsigned int,unsigned long) ;} ;


 long EINVAL ;
 long VFIO_API_VERSION ;



 long stub1 (void*,unsigned int,unsigned long) ;
 long vfio_ioctl_check_extension (struct vfio_container*,unsigned long) ;
 long vfio_ioctl_set_iommu (struct vfio_container*,unsigned long) ;

__attribute__((used)) static long vfio_fops_unl_ioctl(struct file *filep,
    unsigned int cmd, unsigned long arg)
{
 struct vfio_container *container = filep->private_data;
 struct vfio_iommu_driver *driver;
 void *data;
 long ret = -EINVAL;

 if (!container)
  return ret;

 switch (cmd) {
 case 129:
  ret = VFIO_API_VERSION;
  break;
 case 130:
  ret = vfio_ioctl_check_extension(container, arg);
  break;
 case 128:
  ret = vfio_ioctl_set_iommu(container, arg);
  break;
 default:
  driver = container->iommu_driver;
  data = container->iommu_data;

  if (driver)
   ret = driver->ops->ioctl(data, cmd, arg);
 }

 return ret;
}
