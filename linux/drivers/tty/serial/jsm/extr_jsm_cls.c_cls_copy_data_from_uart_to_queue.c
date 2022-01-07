
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct jsm_channel {int ch_r_head; int ch_r_tail; int ch_cached_lsr; int ch_c_iflag; int* ch_equeue; int ch_e_head; int ch_lock; int ch_rxcount; int ch_err_frame; int ch_err_break; int ch_err_parity; TYPE_1__* ch_cls_uart; void** ch_rqueue; int ch_err_overrun; } ;
struct TYPE_2__ {int txrx; int lsr; } ;


 int EQUEUEMASK ;
 int IGNBRK ;
 int RQUEUEMASK ;
 int UART_LSR_BI ;
 int UART_LSR_DR ;
 int UART_LSR_FE ;
 int UART_LSR_PE ;
 void* readb (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cls_copy_data_from_uart_to_queue(struct jsm_channel *ch)
{
 int qleft = 0;
 u8 linestatus = 0;
 u8 error_mask = 0;
 u16 head;
 u16 tail;
 unsigned long flags;

 if (!ch)
  return;

 spin_lock_irqsave(&ch->ch_lock, flags);


 head = ch->ch_r_head & RQUEUEMASK;
 tail = ch->ch_r_tail & RQUEUEMASK;


 linestatus = ch->ch_cached_lsr;
 ch->ch_cached_lsr = 0;


 qleft = tail - head - 1;
 if (qleft < 0)
  qleft += RQUEUEMASK + 1;





 if (ch->ch_c_iflag & IGNBRK)
  error_mask |= UART_LSR_BI;

 while (1) {




  linestatus = readb(&ch->ch_cls_uart->lsr);


  if (!(linestatus & UART_LSR_DR))
   break;





  if (linestatus & error_mask) {
   u8 discard;

   linestatus = 0;
   discard = readb(&ch->ch_cls_uart->txrx);
   continue;
  }
  while (qleft < 1) {
   tail = (tail + 1) & RQUEUEMASK;
   ch->ch_r_tail = tail;
   ch->ch_err_overrun++;
   qleft++;
  }

  ch->ch_equeue[head] = linestatus & (UART_LSR_BI | UART_LSR_PE
         | UART_LSR_FE);
  ch->ch_rqueue[head] = readb(&ch->ch_cls_uart->txrx);

  qleft--;

  if (ch->ch_equeue[head] & UART_LSR_PE)
   ch->ch_err_parity++;
  if (ch->ch_equeue[head] & UART_LSR_BI)
   ch->ch_err_break++;
  if (ch->ch_equeue[head] & UART_LSR_FE)
   ch->ch_err_frame++;


  head = (head + 1) & RQUEUEMASK;
  ch->ch_rxcount++;
 }




 ch->ch_r_head = head & RQUEUEMASK;
 ch->ch_e_head = head & EQUEUEMASK;

 spin_unlock_irqrestore(&ch->ch_lock, flags);
}
