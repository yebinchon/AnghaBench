
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct jsm_channel {int ch_flags; TYPE_1__* ch_cls_uart; } ;
struct TYPE_2__ {int lcr; } ;


 int CH_BREAK_SENDING ;
 int UART_LCR_SBC ;
 int readb (int *) ;
 int writeb (int,int *) ;

__attribute__((used)) static void cls_send_break(struct jsm_channel *ch)
{

 if (!(ch->ch_flags & CH_BREAK_SENDING)) {
  u8 temp = readb(&ch->ch_cls_uart->lcr);

  writeb((temp | UART_LCR_SBC), &ch->ch_cls_uart->lcr);
  ch->ch_flags |= (CH_BREAK_SENDING);
 }
}
