
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int promisc_mode; } ;
struct TYPE_6__ {int role; scalar_t__ reflect_promisc_primary; } ;
struct TYPE_5__ {TYPE_3__ sbp; } ;
struct qeth_card {TYPE_1__ info; TYPE_2__ options; } ;


 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_CARD_TEXT_ (struct qeth_card*,int,char*,char,int) ;
 int QETH_SBP_ROLE_NONE ;
 int QETH_SBP_ROLE_PRIMARY ;
 int QETH_SBP_ROLE_SECONDARY ;
 int qeth_bridgeport_setrole (struct qeth_card*,int) ;

__attribute__((used)) static void qeth_l2_promisc_to_bridge(struct qeth_card *card, bool enable)
{
 int role;
 int rc;

 QETH_CARD_TEXT(card, 3, "pmisc2br");

 if (enable) {
  if (card->options.sbp.reflect_promisc_primary)
   role = QETH_SBP_ROLE_PRIMARY;
  else
   role = QETH_SBP_ROLE_SECONDARY;
 } else
  role = QETH_SBP_ROLE_NONE;

 rc = qeth_bridgeport_setrole(card, role);
 QETH_CARD_TEXT_(card, 2, "bpm%c%04x", enable ? '+' : '-', rc);
 if (!rc) {
  card->options.sbp.role = role;
  card->info.promisc_mode = enable;
 }
}
