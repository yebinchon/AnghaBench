
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rng; } ;
struct TYPE_4__ {int ri_down; int ri_up; } ;
struct slgt_info {int pending_bh; int event_wait_q; int status_event_wait_q; TYPE_1__ icount; int ri_chkcount; int signals; int device_name; TYPE_2__ input_signal_events; } ;


 int BH_STATUS ;
 unsigned short BIT0 ;
 int DBGISR (char*) ;
 scalar_t__ IO_PIN_SHUTDOWN_LIMIT ;
 int IRQ_RI ;
 int SerialSignal_RI ;
 int slgt_irq_off (struct slgt_info*,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void ri_change(struct slgt_info *info, unsigned short status)
{
 if (status & BIT0) {
  info->signals |= SerialSignal_RI;
  info->input_signal_events.ri_up++;
 } else {
  info->signals &= ~SerialSignal_RI;
  info->input_signal_events.ri_down++;
 }
 DBGISR(("ri_change %s signals=%04X\n", info->device_name, info->signals));
 if ((info->ri_chkcount)++ == IO_PIN_SHUTDOWN_LIMIT) {
  slgt_irq_off(info, IRQ_RI);
  return;
 }
 info->icount.rng++;
 wake_up_interruptible(&info->status_event_wait_q);
 wake_up_interruptible(&info->event_wait_q);
 info->pending_bh |= BH_STATUS;
}
