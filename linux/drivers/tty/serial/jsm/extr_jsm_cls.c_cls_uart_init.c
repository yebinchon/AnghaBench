
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jsm_channel {int ch_flags; TYPE_1__* ch_cls_uart; } ;
struct TYPE_2__ {int msr; int lsr; int isr_fcr; int txrx; int lcr; int ier; } ;


 int CH_FIFO_ENABLED ;
 int CH_TX_FIFO_EMPTY ;
 int CH_TX_FIFO_LWM ;
 unsigned char UART_EXAR654_EFR_ECB ;
 unsigned char UART_EXAR654_ENHANCED_REGISTER_SET ;
 unsigned char UART_FCR_CLEAR_RCVR ;
 unsigned char UART_FCR_CLEAR_XMIT ;
 unsigned char UART_FCR_ENABLE_FIFO ;
 unsigned char readb (int *) ;
 int udelay (int) ;
 int writeb (unsigned char,int *) ;

__attribute__((used)) static void cls_uart_init(struct jsm_channel *ch)
{
 unsigned char lcrb = readb(&ch->ch_cls_uart->lcr);
 unsigned char isr_fcr = 0;

 writeb(0, &ch->ch_cls_uart->ier);





 writeb(UART_EXAR654_ENHANCED_REGISTER_SET, &ch->ch_cls_uart->lcr);

 isr_fcr = readb(&ch->ch_cls_uart->isr_fcr);


 isr_fcr |= (UART_EXAR654_EFR_ECB);

 writeb(isr_fcr, &ch->ch_cls_uart->isr_fcr);


 writeb(lcrb, &ch->ch_cls_uart->lcr);


 readb(&ch->ch_cls_uart->txrx);

 writeb((UART_FCR_ENABLE_FIFO|UART_FCR_CLEAR_RCVR|UART_FCR_CLEAR_XMIT),
       &ch->ch_cls_uart->isr_fcr);
 udelay(10);

 ch->ch_flags |= (CH_FIFO_ENABLED | CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);

 readb(&ch->ch_cls_uart->lsr);
 readb(&ch->ch_cls_uart->msr);
}
