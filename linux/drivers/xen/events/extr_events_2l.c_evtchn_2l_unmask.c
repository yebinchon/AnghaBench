
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_info {int evtchn_upcall_pending; int evtchn_pending_sel; } ;
struct shared_info {int * evtchn_mask; int * evtchn_pending; } ;
struct evtchn_unmask {unsigned int port; } ;


 unsigned int BITS_PER_EVTCHN_WORD ;
 int BM (int *) ;
 int BUG_ON (int) ;
 int EVTCHNOP_unmask ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_unmask*) ;
 struct shared_info* HYPERVISOR_shared_info ;
 struct vcpu_info* __this_cpu_read (int ) ;
 unsigned int cpu_from_evtchn (unsigned int) ;
 unsigned int get_cpu () ;
 int irqs_disabled () ;
 int put_cpu () ;
 int sync_clear_bit (unsigned int,int ) ;
 int sync_set_bit (unsigned int,int ) ;
 int sync_test_and_set_bit (unsigned int,int ) ;
 int sync_test_bit (unsigned int,int ) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ xen_hvm_domain () ;
 int xen_vcpu ;

__attribute__((used)) static void evtchn_2l_unmask(unsigned port)
{
 struct shared_info *s = HYPERVISOR_shared_info;
 unsigned int cpu = get_cpu();
 int do_hypercall = 0, evtchn_pending = 0;

 BUG_ON(!irqs_disabled());

 if (unlikely((cpu != cpu_from_evtchn(port))))
  do_hypercall = 1;
 else {
  sync_clear_bit(port, BM(&s->evtchn_mask[0]));
  evtchn_pending = sync_test_bit(port, BM(&s->evtchn_pending[0]));

  if (unlikely(evtchn_pending && xen_hvm_domain())) {
   sync_set_bit(port, BM(&s->evtchn_mask[0]));
   do_hypercall = 1;
  }
 }




 if (do_hypercall) {
  struct evtchn_unmask unmask = { .port = port };
  (void)HYPERVISOR_event_channel_op(EVTCHNOP_unmask, &unmask);
 } else {
  struct vcpu_info *vcpu_info = __this_cpu_read(xen_vcpu);






  if (evtchn_pending &&
      !sync_test_and_set_bit(port / BITS_PER_EVTCHN_WORD,
        BM(&vcpu_info->evtchn_pending_sel)))
   vcpu_info->evtchn_upcall_pending = 1;
 }

 put_cpu();
}
