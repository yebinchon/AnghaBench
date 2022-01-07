
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jsm_channel {scalar_t__ ch_stopc; TYPE_1__* ch_cls_uart; int ch_xoff_sends; } ;
struct TYPE_2__ {int txrx; } ;


 scalar_t__ __DISABLED_CHAR ;
 int writeb (scalar_t__,int *) ;

__attribute__((used)) static void cls_send_stop_character(struct jsm_channel *ch)
{
 if (!ch)
  return;

 if (ch->ch_stopc != __DISABLED_CHAR) {
  ch->ch_xoff_sends++;
  writeb(ch->ch_stopc, &ch->ch_cls_uart->txrx);
 }
}
