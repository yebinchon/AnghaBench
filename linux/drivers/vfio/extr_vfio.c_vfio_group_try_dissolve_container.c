
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int container_users; } ;


 int __vfio_group_unset_container (struct vfio_group*) ;
 scalar_t__ atomic_dec_if_positive (int *) ;

__attribute__((used)) static void vfio_group_try_dissolve_container(struct vfio_group *group)
{
 if (0 == atomic_dec_if_positive(&group->container_users))
  __vfio_group_unset_container(group);
}
