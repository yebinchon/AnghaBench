
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_group {int container_users; TYPE_1__* container; scalar_t__ noiommu; } ;
struct TYPE_2__ {int iommu_driver; } ;


 int EINVAL ;
 int EPERM ;
 int atomic_dec (int *) ;
 int atomic_inc_not_zero (int *) ;
 int vfio_group_viable (struct vfio_group*) ;

__attribute__((used)) static int vfio_group_add_container_user(struct vfio_group *group)
{
 if (!atomic_inc_not_zero(&group->container_users))
  return -EINVAL;

 if (group->noiommu) {
  atomic_dec(&group->container_users);
  return -EPERM;
 }
 if (!group->container->iommu_driver || !vfio_group_viable(group)) {
  atomic_dec(&group->container_users);
  return -EINVAL;
 }

 return 0;
}
