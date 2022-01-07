
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct txentry_desc {int flags; } ;
struct data_queue {TYPE_3__* rt2x00dev; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {TYPE_1__* lib; } ;
struct TYPE_4__ {int (* kick_queue ) (struct data_queue*) ;} ;


 int ENTRY_TXD_BURST ;
 scalar_t__ rt2x00queue_threshold (struct data_queue*) ;
 int stub1 (struct data_queue*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void rt2x00queue_kick_tx_queue(struct data_queue *queue,
          struct txentry_desc *txdesc)
{
 if (rt2x00queue_threshold(queue) ||
     !test_bit(ENTRY_TXD_BURST, &txdesc->flags))
  queue->rt2x00dev->ops->lib->kick_queue(queue);
}
