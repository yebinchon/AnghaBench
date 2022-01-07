
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_iommu_driver {TYPE_1__* ops; } ;
struct vfio_group {struct vfio_container* container; } ;
struct vfio_container {int iommu_data; struct vfio_iommu_driver* iommu_driver; } ;
struct notifier_block {int dummy; } ;
struct TYPE_2__ {int (* register_notifier ) (int ,unsigned long*,struct notifier_block*) ;} ;


 int EINVAL ;
 int ENOTTY ;
 scalar_t__ likely (int ) ;
 int stub1 (int ,unsigned long*,struct notifier_block*) ;
 int vfio_group_add_container_user (struct vfio_group*) ;
 int vfio_group_try_dissolve_container (struct vfio_group*) ;

__attribute__((used)) static int vfio_register_iommu_notifier(struct vfio_group *group,
     unsigned long *events,
     struct notifier_block *nb)
{
 struct vfio_container *container;
 struct vfio_iommu_driver *driver;
 int ret;

 ret = vfio_group_add_container_user(group);
 if (ret)
  return -EINVAL;

 container = group->container;
 driver = container->iommu_driver;
 if (likely(driver && driver->ops->register_notifier))
  ret = driver->ops->register_notifier(container->iommu_data,
           events, nb);
 else
  ret = -ENOTTY;

 vfio_group_try_dissolve_container(group);

 return ret;
}
