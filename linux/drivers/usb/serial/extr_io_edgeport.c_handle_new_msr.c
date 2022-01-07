
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct edgeport_port {int shadowMSR; TYPE_2__* port; } ;
struct async_icount {int rng; int dcd; int dsr; int cts; } ;
typedef int __u8 ;
struct TYPE_3__ {int delta_msr_wait; } ;
struct TYPE_4__ {TYPE_1__ port; struct async_icount icount; } ;


 int EDGEPORT_MSR_DELTA_CD ;
 int EDGEPORT_MSR_DELTA_CTS ;
 int EDGEPORT_MSR_DELTA_DSR ;
 int EDGEPORT_MSR_DELTA_RI ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void handle_new_msr(struct edgeport_port *edge_port, __u8 newMsr)
{
 struct async_icount *icount;

 if (newMsr & (EDGEPORT_MSR_DELTA_CTS | EDGEPORT_MSR_DELTA_DSR |
   EDGEPORT_MSR_DELTA_RI | EDGEPORT_MSR_DELTA_CD)) {
  icount = &edge_port->port->icount;


  if (newMsr & EDGEPORT_MSR_DELTA_CTS)
   icount->cts++;
  if (newMsr & EDGEPORT_MSR_DELTA_DSR)
   icount->dsr++;
  if (newMsr & EDGEPORT_MSR_DELTA_CD)
   icount->dcd++;
  if (newMsr & EDGEPORT_MSR_DELTA_RI)
   icount->rng++;
  wake_up_interruptible(&edge_port->port->port.delta_msr_wait);
 }


 edge_port->shadowMSR = newMsr & 0xf0;
}
