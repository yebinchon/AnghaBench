
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evtchn_bind_vcpu {int port; int vcpu; } ;


 int EVTCHNOP_bind_vcpu ;
 scalar_t__ HYPERVISOR_event_channel_op (int ,struct evtchn_bind_vcpu*) ;
 int VALID_EVTCHN (int) ;
 int bind_evtchn_to_cpu (int,unsigned int) ;
 int test_and_set_mask (int) ;
 int unmask_evtchn (int) ;
 int xen_support_evtchn_rebind () ;
 int xen_vcpu_nr (unsigned int) ;

__attribute__((used)) static int xen_rebind_evtchn_to_cpu(int evtchn, unsigned int tcpu)
{
 struct evtchn_bind_vcpu bind_vcpu;
 int masked;

 if (!VALID_EVTCHN(evtchn))
  return -1;

 if (!xen_support_evtchn_rebind())
  return -1;


 bind_vcpu.port = evtchn;
 bind_vcpu.vcpu = xen_vcpu_nr(tcpu);





 masked = test_and_set_mask(evtchn);






 if (HYPERVISOR_event_channel_op(EVTCHNOP_bind_vcpu, &bind_vcpu) >= 0)
  bind_evtchn_to_cpu(evtchn, tcpu);

 if (!masked)
  unmask_evtchn(evtchn);

 return 0;
}
