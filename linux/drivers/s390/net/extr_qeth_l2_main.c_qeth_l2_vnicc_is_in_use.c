
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cur_chars; int rx_bcast_enabled; } ;
struct TYPE_4__ {TYPE_1__ vnicc; } ;
struct qeth_card {TYPE_2__ options; } ;


 scalar_t__ QETH_VNICC_DEFAULT ;
 int qeth_card_hw_is_reachable (struct qeth_card*) ;

bool qeth_l2_vnicc_is_in_use(struct qeth_card *card)
{

 if (!card->options.vnicc.cur_chars)
  return 0;



 if (card->options.vnicc.cur_chars == QETH_VNICC_DEFAULT) {
  if (!card->options.vnicc.rx_bcast_enabled ||
      !qeth_card_hw_is_reachable(card))
   return 0;
 }
 return 1;
}
