
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct vfio_device {int device_data; TYPE_1__* ops; } ;
struct file {struct vfio_device* private_data; } ;
struct TYPE_2__ {int (* mmap ) (int ,struct vm_area_struct*) ;} ;


 int EINVAL ;
 int stub1 (int ,struct vm_area_struct*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int vfio_device_fops_mmap(struct file *filep, struct vm_area_struct *vma)
{
 struct vfio_device *device = filep->private_data;

 if (unlikely(!device->ops->mmap))
  return -EINVAL;

 return device->ops->mmap(device->device_data, vma);
}
