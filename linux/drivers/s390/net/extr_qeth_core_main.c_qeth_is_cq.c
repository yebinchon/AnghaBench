
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int no_in_queues; int * c_q; } ;
struct TYPE_3__ {scalar_t__ cq; } ;
struct qeth_card {TYPE_2__ qdio; TYPE_1__ options; } ;


 scalar_t__ QETH_CQ_ENABLED ;

__attribute__((used)) static inline int qeth_is_cq(struct qeth_card *card, unsigned int queue)
{
 return card->options.cq == QETH_CQ_ENABLED &&
     card->qdio.c_q != ((void*)0) &&
     queue != 0 &&
     queue == card->qdio.no_in_queues - 1;
}
