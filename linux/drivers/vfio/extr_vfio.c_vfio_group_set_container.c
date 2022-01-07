
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfio_iommu_driver {TYPE_2__* ops; } ;
struct vfio_group {scalar_t__ noiommu; int container_users; int container_next; struct vfio_container* container; int iommu_group; } ;
struct vfio_container {scalar_t__ noiommu; int group_lock; int group_list; int iommu_data; struct vfio_iommu_driver* iommu_driver; } ;
struct fd {TYPE_1__* file; } ;
struct TYPE_4__ {int (* attach_group ) (int ,int ) ;} ;
struct TYPE_3__ {struct vfio_container* private_data; int * f_op; } ;


 int CAP_SYS_RAWIO ;
 int EBADF ;
 int EINVAL ;
 int EPERM ;
 int WARN_ON (int) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int capable (int ) ;
 int down_write (int *) ;
 struct fd fdget (int) ;
 int fdput (struct fd) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 int stub1 (int ,int ) ;
 int up_write (int *) ;
 int vfio_container_get (struct vfio_container*) ;
 int vfio_fops ;

__attribute__((used)) static int vfio_group_set_container(struct vfio_group *group, int container_fd)
{
 struct fd f;
 struct vfio_container *container;
 struct vfio_iommu_driver *driver;
 int ret = 0;

 if (atomic_read(&group->container_users))
  return -EINVAL;

 if (group->noiommu && !capable(CAP_SYS_RAWIO))
  return -EPERM;

 f = fdget(container_fd);
 if (!f.file)
  return -EBADF;


 if (f.file->f_op != &vfio_fops) {
  fdput(f);
  return -EINVAL;
 }

 container = f.file->private_data;
 WARN_ON(!container);

 down_write(&container->group_lock);


 if (!list_empty(&container->group_list) &&
     container->noiommu != group->noiommu) {
  ret = -EPERM;
  goto unlock_out;
 }

 driver = container->iommu_driver;
 if (driver) {
  ret = driver->ops->attach_group(container->iommu_data,
      group->iommu_group);
  if (ret)
   goto unlock_out;
 }

 group->container = container;
 container->noiommu = group->noiommu;
 list_add(&group->container_next, &container->group_list);


 vfio_container_get(container);
 atomic_inc(&group->container_users);

unlock_out:
 up_write(&container->group_lock);
 fdput(f);
 return ret;
}
