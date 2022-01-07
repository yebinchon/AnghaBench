
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int sup_chars; int set_char_sup; int wanted_chars; int cur_chars; int rx_bcast_enabled; int learning_timeout; } ;
struct TYPE_4__ {TYPE_1__ vnicc; } ;
struct qeth_card {TYPE_2__ options; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int IPA_VNICC_DISABLE ;
 int IPA_VNICC_ENABLE ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_VNICC_LEARNING ;
 int QETH_VNICC_RX_BCAST ;
 scalar_t__ qeth_bridgeport_is_in_use (struct qeth_card*) ;
 int qeth_card_hw_is_reachable (struct qeth_card*) ;
 int qeth_l2_vnicc_recover_timeout (struct qeth_card*,int,int *) ;
 int qeth_l2_vnicc_set_char (struct qeth_card*,int,int) ;

int qeth_l2_vnicc_set_state(struct qeth_card *card, u32 vnicc, bool state)
{
 int rc = 0;
 u32 cmd;

 QETH_CARD_TEXT(card, 2, "vniccsch");


 if (qeth_bridgeport_is_in_use(card))
  return -EBUSY;


 if (!(card->options.vnicc.sup_chars & vnicc) ||
     !(card->options.vnicc.set_char_sup & vnicc))
  return -EOPNOTSUPP;


 if (state) {
  cmd = IPA_VNICC_ENABLE;
  card->options.vnicc.wanted_chars |= vnicc;
 } else {
  cmd = IPA_VNICC_DISABLE;
  card->options.vnicc.wanted_chars &= ~vnicc;
 }


 if (card->options.vnicc.cur_chars == card->options.vnicc.wanted_chars)
  return rc;


 if (!qeth_card_hw_is_reachable(card)) {
  if (state)
   card->options.vnicc.cur_chars |= vnicc;
  else
   card->options.vnicc.cur_chars &= ~vnicc;
  return rc;
 }

 rc = qeth_l2_vnicc_set_char(card, vnicc, cmd);
 if (rc)
  card->options.vnicc.wanted_chars =
   card->options.vnicc.cur_chars;
 else {

  if (state && vnicc == QETH_VNICC_RX_BCAST)
   card->options.vnicc.rx_bcast_enabled = 1;
  if (!state && vnicc == QETH_VNICC_LEARNING)
   qeth_l2_vnicc_recover_timeout(card, vnicc,
     &card->options.vnicc.learning_timeout);
 }

 return rc;
}
