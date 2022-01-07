
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evtchn_bind_ipi {int port; int vcpu; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int EVTCHNOP_bind_ipi ;
 scalar_t__ HYPERVISOR_event_channel_op (int ,struct evtchn_bind_ipi*) ;
 int XEN_NR_IPIS ;
 int bind_evtchn_to_cpu (int,unsigned int) ;
 int ipi_from_irq (int) ;
 int ipi_to_irq ;
 int* per_cpu (int ,unsigned int) ;
 int xen_irq_info_ipi_setup (unsigned int,int,int,int) ;
 int xen_vcpu_nr (unsigned int) ;

__attribute__((used)) static void restore_cpu_ipis(unsigned int cpu)
{
 struct evtchn_bind_ipi bind_ipi;
 int ipi, irq, evtchn;

 for (ipi = 0; ipi < XEN_NR_IPIS; ipi++) {
  if ((irq = per_cpu(ipi_to_irq, cpu)[ipi]) == -1)
   continue;

  BUG_ON(ipi_from_irq(irq) != ipi);


  bind_ipi.vcpu = xen_vcpu_nr(cpu);
  if (HYPERVISOR_event_channel_op(EVTCHNOP_bind_ipi,
      &bind_ipi) != 0)
   BUG();
  evtchn = bind_ipi.port;


  (void)xen_irq_info_ipi_setup(cpu, irq, evtchn, ipi);
  bind_evtchn_to_cpu(evtchn, cpu);
 }
}
