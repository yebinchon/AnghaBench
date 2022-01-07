
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sniffer; } ;
struct TYPE_5__ {int promisc_mode; } ;
struct qeth_card {TYPE_3__ options; TYPE_2__ info; TYPE_1__* dev; } ;
struct TYPE_4__ {int flags; } ;


 int IFF_PROMISC ;
 int IPA_SETADP_SET_DIAG_ASSIST ;
 int IPA_SETADP_SET_PROMISC_MODE ;
 scalar_t__ IS_VM_NIC (struct qeth_card*) ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_DIAGS_CMD_TRACE_DISABLE ;
 int QETH_DIAGS_CMD_TRACE_ENABLE ;
 scalar_t__ qeth_adp_supported (struct qeth_card*,int ) ;
 int qeth_diags_trace (struct qeth_card*,int ) ;
 int qeth_setadp_promisc_mode (struct qeth_card*,int) ;

__attribute__((used)) static void qeth_l3_set_promisc_mode(struct qeth_card *card)
{
 bool enable = card->dev->flags & IFF_PROMISC;

 if (card->info.promisc_mode == enable)
  return;

 if (IS_VM_NIC(card)) {
  if (qeth_adp_supported(card, IPA_SETADP_SET_PROMISC_MODE))
   qeth_setadp_promisc_mode(card, enable);
 } else if (card->options.sniffer &&
     qeth_adp_supported(card, IPA_SETADP_SET_DIAG_ASSIST)) {
  if (enable) {
   QETH_CARD_TEXT(card, 3, "+promisc");
   qeth_diags_trace(card, QETH_DIAGS_CMD_TRACE_ENABLE);
  } else {
   QETH_CARD_TEXT(card, 3, "-promisc");
   qeth_diags_trace(card, QETH_DIAGS_CMD_TRACE_DISABLE);
  }
 }
}
