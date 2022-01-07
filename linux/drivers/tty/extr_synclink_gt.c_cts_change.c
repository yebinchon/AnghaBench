
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* tty; } ;
struct TYPE_6__ {int cts; } ;
struct TYPE_5__ {int cts_down; int cts_up; } ;
struct slgt_info {int signals; TYPE_4__ port; int pending_bh; int event_wait_q; int status_event_wait_q; TYPE_2__ icount; int cts_chkcount; int device_name; TYPE_1__ input_signal_events; } ;
struct TYPE_7__ {int hw_stopped; } ;


 int BH_STATUS ;
 int BH_TRANSMIT ;
 unsigned short BIT2 ;
 int DBGISR (char*) ;
 scalar_t__ IO_PIN_SHUTDOWN_LIMIT ;
 int IRQ_CTS ;
 int SerialSignal_CTS ;
 int slgt_irq_off (struct slgt_info*,int ) ;
 scalar_t__ tty_port_cts_enabled (TYPE_4__*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void cts_change(struct slgt_info *info, unsigned short status)
{
 if (status & BIT2) {
  info->signals |= SerialSignal_CTS;
  info->input_signal_events.cts_up++;
 } else {
  info->signals &= ~SerialSignal_CTS;
  info->input_signal_events.cts_down++;
 }
 DBGISR(("cts_change %s signals=%04X\n", info->device_name, info->signals));
 if ((info->cts_chkcount)++ == IO_PIN_SHUTDOWN_LIMIT) {
  slgt_irq_off(info, IRQ_CTS);
  return;
 }
 info->icount.cts++;
 wake_up_interruptible(&info->status_event_wait_q);
 wake_up_interruptible(&info->event_wait_q);
 info->pending_bh |= BH_STATUS;

 if (tty_port_cts_enabled(&info->port)) {
  if (info->port.tty) {
   if (info->port.tty->hw_stopped) {
    if (info->signals & SerialSignal_CTS) {
      info->port.tty->hw_stopped = 0;
     info->pending_bh |= BH_TRANSMIT;
     return;
    }
   } else {
    if (!(info->signals & SerialSignal_CTS))
      info->port.tty->hw_stopped = 1;
   }
  }
 }
}
