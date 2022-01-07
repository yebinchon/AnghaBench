
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int notifier; } ;
struct notifier_block {int dummy; } ;


 int EINVAL ;
 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;
 int vfio_group_add_container_user (struct vfio_group*) ;
 int vfio_group_try_dissolve_container (struct vfio_group*) ;

__attribute__((used)) static int vfio_unregister_group_notifier(struct vfio_group *group,
      struct notifier_block *nb)
{
 int ret;

 ret = vfio_group_add_container_user(group);
 if (ret)
  return -EINVAL;

 ret = blocking_notifier_chain_unregister(&group->notifier, nb);

 vfio_group_try_dissolve_container(group);

 return ret;
}
