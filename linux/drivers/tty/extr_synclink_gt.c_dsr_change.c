
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dsr; } ;
struct TYPE_4__ {int dsr_down; int dsr_up; } ;
struct slgt_info {int pending_bh; int event_wait_q; int status_event_wait_q; TYPE_1__ icount; int dsr_chkcount; int signals; int device_name; TYPE_2__ input_signal_events; } ;


 int BH_STATUS ;
 unsigned short BIT3 ;
 int DBGISR (char*) ;
 scalar_t__ IO_PIN_SHUTDOWN_LIMIT ;
 int IRQ_DSR ;
 int SerialSignal_DSR ;
 int slgt_irq_off (struct slgt_info*,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void dsr_change(struct slgt_info *info, unsigned short status)
{
 if (status & BIT3) {
  info->signals |= SerialSignal_DSR;
  info->input_signal_events.dsr_up++;
 } else {
  info->signals &= ~SerialSignal_DSR;
  info->input_signal_events.dsr_down++;
 }
 DBGISR(("dsr_change %s signals=%04X\n", info->device_name, info->signals));
 if ((info->dsr_chkcount)++ == IO_PIN_SHUTDOWN_LIMIT) {
  slgt_irq_off(info, IRQ_DSR);
  return;
 }
 info->icount.dsr++;
 wake_up_interruptible(&info->status_event_wait_q);
 wake_up_interruptible(&info->event_wait_q);
 info->pending_bh |= BH_STATUS;
}
