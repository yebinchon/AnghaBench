
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int notifier; struct kvm* kvm; } ;
struct kvm {int dummy; } ;


 int VFIO_GROUP_NOTIFY_SET_KVM ;
 int blocking_notifier_call_chain (int *,int ,struct kvm*) ;

void vfio_group_set_kvm(struct vfio_group *group, struct kvm *kvm)
{
 group->kvm = kvm;
 blocking_notifier_call_chain(&group->notifier,
    VFIO_GROUP_NOTIFY_SET_KVM, kvm);
}
