
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int buf_count; } ;
struct TYPE_4__ {int buf_count; } ;
struct TYPE_6__ {TYPE_2__ init_pool; TYPE_1__ in_buf_pool; } ;
struct qeth_card {scalar_t__ state; TYPE_3__ qdio; } ;


 scalar_t__ CARD_STATE_DOWN ;
 int EPERM ;
 int QETH_CARD_TEXT (struct qeth_card*,int,char*) ;
 int qeth_alloc_buffer_pool (struct qeth_card*) ;
 int qeth_clear_working_pool_list (struct qeth_card*) ;
 int qeth_free_buffer_pool (struct qeth_card*) ;

int qeth_realloc_buffer_pool(struct qeth_card *card, int bufcnt)
{
 QETH_CARD_TEXT(card, 2, "realcbp");

 if (card->state != CARD_STATE_DOWN)
  return -EPERM;


 qeth_clear_working_pool_list(card);
 qeth_free_buffer_pool(card);
 card->qdio.in_buf_pool.buf_count = bufcnt;
 card->qdio.init_pool.buf_count = bufcnt;
 return qeth_alloc_buffer_pool(card);
}
