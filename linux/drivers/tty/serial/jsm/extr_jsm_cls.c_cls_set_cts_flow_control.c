
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct jsm_channel {int ch_t_tlevel; TYPE_1__* ch_cls_uart; } ;
struct TYPE_2__ {int isr_fcr; int ier; int lcr; } ;


 int UART_16654_FCR_RXTRIGGER_56 ;
 int UART_16654_FCR_TXTRIGGER_16 ;
 int UART_EXAR654_EFR_CTSDSR ;
 int UART_EXAR654_EFR_ECB ;
 int UART_EXAR654_EFR_IXON ;
 int UART_EXAR654_ENHANCED_REGISTER_SET ;
 int UART_EXAR654_IER_CTSDSR ;
 int UART_EXAR654_IER_XOFF ;
 int UART_FCR_CLEAR_RCVR ;
 int UART_FCR_ENABLE_FIFO ;
 int readb (int *) ;
 int writeb (int,int *) ;

__attribute__((used)) static void cls_set_cts_flow_control(struct jsm_channel *ch)
{
 u8 lcrb = readb(&ch->ch_cls_uart->lcr);
 u8 ier = readb(&ch->ch_cls_uart->ier);
 u8 isr_fcr = 0;





 writeb(UART_EXAR654_ENHANCED_REGISTER_SET, &ch->ch_cls_uart->lcr);

 isr_fcr = readb(&ch->ch_cls_uart->isr_fcr);


 isr_fcr |= (UART_EXAR654_EFR_ECB | UART_EXAR654_EFR_CTSDSR);
 isr_fcr &= ~(UART_EXAR654_EFR_IXON);

 writeb(isr_fcr, &ch->ch_cls_uart->isr_fcr);


 writeb(lcrb, &ch->ch_cls_uart->lcr);





 ier |= (UART_EXAR654_IER_CTSDSR);
 ier &= ~(UART_EXAR654_IER_XOFF);
 writeb(ier, &ch->ch_cls_uart->ier);


 writeb((UART_FCR_ENABLE_FIFO), &ch->ch_cls_uart->isr_fcr);

 writeb((UART_FCR_ENABLE_FIFO | UART_16654_FCR_RXTRIGGER_56 |
  UART_16654_FCR_TXTRIGGER_16 | UART_FCR_CLEAR_RCVR),
  &ch->ch_cls_uart->isr_fcr);

 ch->ch_t_tlevel = 16;
}
