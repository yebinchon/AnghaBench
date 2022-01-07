
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct jsm_channel {int ch_flags; TYPE_1__* ch_cls_uart; } ;
struct TYPE_2__ {int lsr; } ;


 int CH_TX_FIFO_EMPTY ;
 int CH_TX_FIFO_LWM ;
 int UART_LSR_TEMT ;
 int readb (int *) ;

__attribute__((used)) static u32 cls_get_uart_bytes_left(struct jsm_channel *ch)
{
 u8 left = 0;
 u8 lsr = readb(&ch->ch_cls_uart->lsr);


 if (!(lsr & UART_LSR_TEMT))
  left = 1;
 else {
  ch->ch_flags |= (CH_TX_FIFO_EMPTY | CH_TX_FIFO_LWM);
  left = 0;
 }

 return left;
}
