
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int layer; } ;
struct qeth_card {int * discipline; TYPE_1__ options; } ;


 scalar_t__ IS_LAYER2 (struct qeth_card*) ;
 int QETH_DISCIPLINE_UNDETERMINED ;
 int qeth_l2_discipline ;
 int qeth_l3_discipline ;
 int symbol_put (int ) ;

void qeth_core_free_discipline(struct qeth_card *card)
{
 if (IS_LAYER2(card))
  symbol_put(qeth_l2_discipline);
 else
  symbol_put(qeth_l3_discipline);
 card->options.layer = QETH_DISCIPLINE_UNDETERMINED;
 card->discipline = ((void*)0);
}
