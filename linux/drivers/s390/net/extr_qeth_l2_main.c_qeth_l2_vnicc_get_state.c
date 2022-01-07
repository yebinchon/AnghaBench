
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int sup_chars; int cur_chars; } ;
struct TYPE_4__ {TYPE_1__ vnicc; } ;
struct qeth_card {TYPE_2__ options; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 scalar_t__ qeth_bridgeport_is_in_use (struct qeth_card*) ;
 scalar_t__ qeth_card_hw_is_reachable (struct qeth_card*) ;
 int qeth_l2_vnicc_query_chars (struct qeth_card*) ;

int qeth_l2_vnicc_get_state(struct qeth_card *card, u32 vnicc, bool *state)
{
 int rc = 0;

 QETH_CARD_TEXT(card, 2, "vniccgch");


 if (qeth_bridgeport_is_in_use(card))
  return -EBUSY;


 if (!(card->options.vnicc.sup_chars & vnicc))
  return -EOPNOTSUPP;


 if (qeth_card_hw_is_reachable(card))
  rc = qeth_l2_vnicc_query_chars(card);

 *state = (card->options.vnicc.cur_chars & vnicc) ? 1 : 0;
 return rc;
}
