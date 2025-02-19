
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;


 unsigned long KVM_S390_VIRTIO_CCW_NOTIFY ;

__attribute__((used)) static inline long __do_kvm_notify(struct subchannel_id schid,
       unsigned long queue_index,
       long cookie)
{
 register unsigned long __nr asm("1") = KVM_S390_VIRTIO_CCW_NOTIFY;
 register struct subchannel_id __schid asm("2") = schid;
 register unsigned long __index asm("3") = queue_index;
 register long __rc asm("2");
 register long __cookie asm("4") = cookie;

 asm volatile ("diag 2,4,0x500\n"
        : "=d" (__rc) : "d" (__nr), "d" (__schid), "d" (__index),
        "d"(__cookie)
        : "memory", "cc");
 return __rc;
}
