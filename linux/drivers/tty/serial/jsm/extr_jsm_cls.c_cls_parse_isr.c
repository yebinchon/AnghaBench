
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint ;
typedef int u8 ;
struct jsm_channel {int ch_flags; TYPE_1__* ch_cls_uart; int ch_lock; } ;
struct jsm_board {size_t nasync; struct jsm_channel** channels; } ;
struct TYPE_2__ {int msr; int isr_fcr; } ;


 int CH_TX_FIFO_EMPTY ;
 int CH_TX_FIFO_LWM ;
 int UART_IIR_NO_INT ;
 int UART_IIR_RDI ;
 int UART_IIR_RDI_TIMEOUT ;
 int UART_IIR_THRI ;
 int cls_copy_data_from_queue_to_uart (struct jsm_channel*) ;
 int cls_copy_data_from_uart_to_queue (struct jsm_channel*) ;
 int cls_parse_modem (struct jsm_channel*,int) ;
 int jsm_check_queue_flow_control (struct jsm_channel*) ;
 int readb (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void cls_parse_isr(struct jsm_board *brd, uint port)
{
 struct jsm_channel *ch;
 u8 isr = 0;
 unsigned long flags;






 if (port >= brd->nasync)
  return;

 ch = brd->channels[port];
 if (!ch)
  return;


 while (1) {
  isr = readb(&ch->ch_cls_uart->isr_fcr);


  if (isr & UART_IIR_NO_INT)
   break;


  if (isr & (UART_IIR_RDI | UART_IIR_RDI_TIMEOUT)) {

   cls_copy_data_from_uart_to_queue(ch);
   jsm_check_queue_flow_control(ch);
  }


  if (isr & UART_IIR_THRI) {

   spin_lock_irqsave(&ch->ch_lock, flags);
   ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
   spin_unlock_irqrestore(&ch->ch_lock, flags);
   cls_copy_data_from_queue_to_uart(ch);
  }
  cls_parse_modem(ch, readb(&ch->ch_cls_uart->msr));
 }
}
