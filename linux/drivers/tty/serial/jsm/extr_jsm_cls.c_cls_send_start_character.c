
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jsm_channel {scalar_t__ ch_startc; TYPE_1__* ch_cls_uart; int ch_xon_sends; } ;
struct TYPE_2__ {int txrx; } ;


 scalar_t__ __DISABLED_CHAR ;
 int writeb (scalar_t__,int *) ;

__attribute__((used)) static void cls_send_start_character(struct jsm_channel *ch)
{
 if (!ch)
  return;

 if (ch->ch_startc != __DISABLED_CHAR) {
  ch->ch_xon_sends++;
  writeb(ch->ch_startc, &ch->ch_cls_uart->txrx);
 }
}
