
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {scalar_t__ kvm; int notifier; } ;
struct notifier_block {int dummy; } ;


 int EINVAL ;
 unsigned long VFIO_GROUP_NOTIFY_SET_KVM ;
 int blocking_notifier_call_chain (int *,unsigned long,scalar_t__) ;
 int blocking_notifier_chain_register (int *,struct notifier_block*) ;
 int vfio_group_add_container_user (struct vfio_group*) ;
 int vfio_group_try_dissolve_container (struct vfio_group*) ;

__attribute__((used)) static int vfio_register_group_notifier(struct vfio_group *group,
     unsigned long *events,
     struct notifier_block *nb)
{
 int ret;
 bool set_kvm = 0;

 if (*events & VFIO_GROUP_NOTIFY_SET_KVM)
  set_kvm = 1;


 *events &= ~VFIO_GROUP_NOTIFY_SET_KVM;


 if (*events)
  return -EINVAL;

 ret = vfio_group_add_container_user(group);
 if (ret)
  return -EINVAL;

 ret = blocking_notifier_chain_register(&group->notifier, nb);





 if (!ret && set_kvm && group->kvm)
  blocking_notifier_call_chain(&group->notifier,
     VFIO_GROUP_NOTIFY_SET_KVM, group->kvm);

 vfio_group_try_dissolve_container(group);

 return ret;
}
