
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int sup_chars; int getset_timeout_sup; scalar_t__ learning_timeout; } ;
struct TYPE_3__ {TYPE_2__ vnicc; } ;
struct qeth_card {TYPE_1__ options; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int IPA_VNICC_SET_TIMEOUT ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int QETH_VNICC_LEARNING ;
 scalar_t__ qeth_bridgeport_is_in_use (struct qeth_card*) ;
 int qeth_card_hw_is_reachable (struct qeth_card*) ;
 int qeth_l2_vnicc_getset_timeout (struct qeth_card*,int,int ,scalar_t__*) ;

int qeth_l2_vnicc_set_timeout(struct qeth_card *card, u32 timeout)
{
 int rc = 0;

 QETH_CARD_TEXT(card, 2, "vniccsto");


 if (qeth_bridgeport_is_in_use(card))
  return -EBUSY;


 if (!(card->options.vnicc.sup_chars & QETH_VNICC_LEARNING) ||
     !(card->options.vnicc.getset_timeout_sup & QETH_VNICC_LEARNING))
  return -EOPNOTSUPP;


 if (card->options.vnicc.learning_timeout == timeout)
  return rc;


 if (!qeth_card_hw_is_reachable(card)) {
  card->options.vnicc.learning_timeout = timeout;
  return rc;
 }


 rc = qeth_l2_vnicc_getset_timeout(card, QETH_VNICC_LEARNING,
       IPA_VNICC_SET_TIMEOUT, &timeout);
 if (!rc)
  card->options.vnicc.learning_timeout = timeout;

 return rc;
}
