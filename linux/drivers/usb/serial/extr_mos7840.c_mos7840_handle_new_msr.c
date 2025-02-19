
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct moschip_port {TYPE_2__* port; } ;
struct async_icount {int rng; int dcd; int dsr; int cts; } ;
typedef int __u8 ;
struct TYPE_3__ {int delta_msr_wait; } ;
struct TYPE_4__ {TYPE_1__ port; struct async_icount icount; } ;


 int MOS_MSR_DELTA_CD ;
 int MOS_MSR_DELTA_CTS ;
 int MOS_MSR_DELTA_DSR ;
 int MOS_MSR_DELTA_RI ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void mos7840_handle_new_msr(struct moschip_port *port, __u8 new_msr)
{
 struct moschip_port *mos7840_port;
 struct async_icount *icount;
 mos7840_port = port;
 if (new_msr &
     (MOS_MSR_DELTA_CTS | MOS_MSR_DELTA_DSR | MOS_MSR_DELTA_RI |
      MOS_MSR_DELTA_CD)) {
  icount = &mos7840_port->port->icount;


  if (new_msr & MOS_MSR_DELTA_CTS)
   icount->cts++;
  if (new_msr & MOS_MSR_DELTA_DSR)
   icount->dsr++;
  if (new_msr & MOS_MSR_DELTA_CD)
   icount->dcd++;
  if (new_msr & MOS_MSR_DELTA_RI)
   icount->rng++;

  wake_up_interruptible(&port->port->port.delta_msr_wait);
 }
}
