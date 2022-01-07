
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_iommu_driver {TYPE_1__* ops; } ;
struct vfio_group {int container_next; int container_q; struct vfio_container* container; int iommu_group; } ;
struct vfio_container {int group_lock; int * iommu_data; struct vfio_iommu_driver* iommu_driver; int group_list; } ;
struct TYPE_2__ {int owner; int (* release ) (int *) ;int (* detach_group ) (int *,int ) ;} ;


 int down_write (int *) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int module_put (int ) ;
 int stub1 (int *,int ) ;
 int stub2 (int *) ;
 int up_write (int *) ;
 int vfio_container_put (struct vfio_container*) ;
 int wake_up (int *) ;

__attribute__((used)) static void __vfio_group_unset_container(struct vfio_group *group)
{
 struct vfio_container *container = group->container;
 struct vfio_iommu_driver *driver;

 down_write(&container->group_lock);

 driver = container->iommu_driver;
 if (driver)
  driver->ops->detach_group(container->iommu_data,
       group->iommu_group);

 group->container = ((void*)0);
 wake_up(&group->container_q);
 list_del(&group->container_next);


 if (driver && list_empty(&container->group_list)) {
  driver->ops->release(container->iommu_data);
  module_put(driver->ops->owner);
  container->iommu_driver = ((void*)0);
  container->iommu_data = ((void*)0);
 }

 up_write(&container->group_lock);

 vfio_container_put(container);
}
