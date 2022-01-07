
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int virq; } ;
struct evtchn_status {int port; scalar_t__ status; scalar_t__ vcpu; TYPE_1__ u; int dom; } ;
typedef int status ;


 int DOMID_SELF ;
 int ENOENT ;
 int EVTCHNOP_status ;
 scalar_t__ EVTCHNSTAT_virq ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_status*) ;
 int memset (struct evtchn_status*,int ,int) ;
 int xen_evtchn_max_channels () ;
 scalar_t__ xen_vcpu_nr (unsigned int) ;

__attribute__((used)) static int find_virq(unsigned int virq, unsigned int cpu)
{
 struct evtchn_status status;
 int port, rc = -ENOENT;

 memset(&status, 0, sizeof(status));
 for (port = 0; port < xen_evtchn_max_channels(); port++) {
  status.dom = DOMID_SELF;
  status.port = port;
  rc = HYPERVISOR_event_channel_op(EVTCHNOP_status, &status);
  if (rc < 0)
   continue;
  if (status.status != EVTCHNSTAT_virq)
   continue;
  if (status.u.virq == virq && status.vcpu == xen_vcpu_nr(cpu)) {
   rc = port;
   break;
  }
 }
 return rc;
}
