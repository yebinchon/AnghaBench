
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jsm_channel {int ch_bd; TYPE_1__* ch_neo_uart; int ch_mostat; } ;
struct TYPE_2__ {int mcr; } ;


 int neo_pci_posting_flush (int ) ;
 int writeb (int ,int *) ;

__attribute__((used)) static void neo_assert_modem_signals(struct jsm_channel *ch)
{
 if (!ch)
  return;

 writeb(ch->ch_mostat, &ch->ch_neo_uart->mcr);


 neo_pci_posting_flush(ch->ch_bd);
}
