
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jsm_channel {int ch_r_tail; int ch_r_head; int ch_c_cflag; int ch_flags; int ch_c_iflag; TYPE_1__* ch_bd; int ch_stops_sent; } ;
struct board_ops {int (* send_start_character ) (struct jsm_channel*) ;int (* enable_receiver ) (struct jsm_channel*) ;int (* send_stop_character ) (struct jsm_channel*) ;int (* disable_receiver ) (struct jsm_channel*) ;} ;
struct TYPE_2__ {int pci_dev; struct board_ops* bd_ops; } ;


 int CH_RECEIVER_OFF ;
 int CRTSCTS ;
 int IXOFF ;
 int MAX_STOPS_SENT ;
 int READ ;
 scalar_t__ RQUEUEMASK ;
 int RQUEUESIZE ;
 int jsm_dbg (int ,int *,char*,...) ;
 int stub1 (struct jsm_channel*) ;
 int stub2 (struct jsm_channel*) ;
 int stub3 (struct jsm_channel*) ;
 int stub4 (struct jsm_channel*) ;

void jsm_check_queue_flow_control(struct jsm_channel *ch)
{
 struct board_ops *bd_ops = ch->ch_bd->bd_ops;
 int qleft;


 if ((qleft = ch->ch_r_tail - ch->ch_r_head - 1) < 0)
  qleft += RQUEUEMASK + 1;
 if (qleft < 256) {

  if (ch->ch_c_cflag & CRTSCTS) {
   if (!(ch->ch_flags & CH_RECEIVER_OFF)) {
    bd_ops->disable_receiver(ch);
    ch->ch_flags |= (CH_RECEIVER_OFF);
    jsm_dbg(READ, &ch->ch_bd->pci_dev,
     "Internal queue hit hilevel mark (%d)! Turning off interrupts\n",
     qleft);
   }
  }

  else if (ch->ch_c_iflag & IXOFF) {
   if (ch->ch_stops_sent <= MAX_STOPS_SENT) {
    bd_ops->send_stop_character(ch);
    ch->ch_stops_sent++;
    jsm_dbg(READ, &ch->ch_bd->pci_dev,
     "Sending stop char! Times sent: %x\n",
     ch->ch_stops_sent);
   }
  }
 }
 if (qleft > (RQUEUESIZE / 2)) {

  if (ch->ch_c_cflag & CRTSCTS) {
   if (ch->ch_flags & CH_RECEIVER_OFF) {
    bd_ops->enable_receiver(ch);
    ch->ch_flags &= ~(CH_RECEIVER_OFF);
    jsm_dbg(READ, &ch->ch_bd->pci_dev,
     "Internal queue hit lowlevel mark (%d)! Turning on interrupts\n",
     qleft);
   }
  }

  else if (ch->ch_c_iflag & IXOFF && ch->ch_stops_sent) {
   ch->ch_stops_sent = 0;
   bd_ops->send_start_character(ch);
   jsm_dbg(READ, &ch->ch_bd->pci_dev,
    "Sending start char!\n");
  }
 }
}
