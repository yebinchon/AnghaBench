
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct jsm_channel {int ch_startc; int ch_stopc; TYPE_1__* ch_cls_uart; } ;
struct TYPE_2__ {int isr_fcr; int ier; int lcr; int spr; int msr; int lsr; int mcr; } ;


 int UART_16654_FCR_RXTRIGGER_16 ;
 int UART_16654_FCR_TXTRIGGER_16 ;
 int UART_EXAR654_EFR_ECB ;
 int UART_EXAR654_EFR_IXOFF ;
 int UART_EXAR654_EFR_RTSDTR ;
 int UART_EXAR654_ENHANCED_REGISTER_SET ;
 int UART_EXAR654_IER_RTSDTR ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_ENABLE_FIFO ;
 int readb (int *) ;
 int writeb (int,int *) ;

__attribute__((used)) static void cls_set_ixoff_flow_control(struct jsm_channel *ch)
{
 u8 lcrb = readb(&ch->ch_cls_uart->lcr);
 u8 ier = readb(&ch->ch_cls_uart->ier);
 u8 isr_fcr = 0;





 writeb(UART_EXAR654_ENHANCED_REGISTER_SET, &ch->ch_cls_uart->lcr);

 isr_fcr = readb(&ch->ch_cls_uart->isr_fcr);


 isr_fcr |= (UART_EXAR654_EFR_ECB | UART_EXAR654_EFR_IXOFF);
 isr_fcr &= ~(UART_EXAR654_EFR_RTSDTR);

 writeb(isr_fcr, &ch->ch_cls_uart->isr_fcr);


 writeb(ch->ch_startc, &ch->ch_cls_uart->mcr);
 writeb(0, &ch->ch_cls_uart->lsr);
 writeb(ch->ch_stopc, &ch->ch_cls_uart->msr);
 writeb(0, &ch->ch_cls_uart->spr);


 writeb(lcrb, &ch->ch_cls_uart->lcr);


 ier &= ~(UART_EXAR654_IER_RTSDTR);
 writeb(ier, &ch->ch_cls_uart->ier);


 writeb((UART_FCR_ENABLE_FIFO), &ch->ch_cls_uart->isr_fcr);

 writeb((UART_FCR_ENABLE_FIFO | UART_16654_FCR_RXTRIGGER_16 |
  UART_16654_FCR_TXTRIGGER_16 | UART_FCR_CLEAR_RCVR),
  &ch->ch_cls_uart->isr_fcr);
}
