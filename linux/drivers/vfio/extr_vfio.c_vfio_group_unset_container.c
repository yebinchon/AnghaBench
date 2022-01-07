
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int container_users; } ;


 int EBUSY ;
 int EINVAL ;
 int __vfio_group_unset_container (struct vfio_group*) ;
 int atomic_cmpxchg (int *,int,int ) ;

__attribute__((used)) static int vfio_group_unset_container(struct vfio_group *group)
{
 int users = atomic_cmpxchg(&group->container_users, 1, 0);

 if (!users)
  return -EINVAL;
 if (users != 1)
  return -EBUSY;

 __vfio_group_unset_container(group);

 return 0;
}
