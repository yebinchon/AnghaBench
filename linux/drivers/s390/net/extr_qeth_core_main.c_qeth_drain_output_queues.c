
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int no_out_queues; scalar_t__* out_qs; } ;
struct qeth_card {TYPE_1__ qdio; } ;


 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int qeth_drain_output_queue (scalar_t__,int) ;

void qeth_drain_output_queues(struct qeth_card *card)
{
 int i;

 QETH_CARD_TEXT(card, 2, "clearqdbf");

 for (i = 0; i < card->qdio.no_out_queues; ++i) {
  if (card->qdio.out_qs[i])
   qeth_drain_output_queue(card->qdio.out_qs[i], 0);
 }
}
