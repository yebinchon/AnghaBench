
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jsm_channel {TYPE_1__* ch_cls_uart; int ch_mostat; } ;
struct TYPE_2__ {int mcr; } ;


 int writeb (int ,int *) ;

__attribute__((used)) static void cls_assert_modem_signals(struct jsm_channel *ch)
{
 if (!ch)
  return;

 writeb(ch->ch_mostat, &ch->ch_cls_uart->mcr);
}
