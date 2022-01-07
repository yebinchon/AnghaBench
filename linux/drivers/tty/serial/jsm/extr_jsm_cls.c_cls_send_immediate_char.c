
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jsm_channel {TYPE_1__* ch_cls_uart; } ;
struct TYPE_2__ {int txrx; } ;


 int writeb (unsigned char,int *) ;

__attribute__((used)) static void cls_send_immediate_char(struct jsm_channel *ch, unsigned char c)
{
 writeb(c, &ch->ch_cls_uart->txrx);
}
