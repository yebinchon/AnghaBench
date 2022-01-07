
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct data_queue {int qid; TYPE_3__* rt2x00dev; int flags; } ;
struct TYPE_6__ {TYPE_2__* ops; int hw; int flags; } ;
struct TYPE_5__ {TYPE_1__* lib; } ;
struct TYPE_4__ {int (* kick_queue ) (struct data_queue*) ;} ;


 int DEVICE_STATE_PRESENT ;





 int QUEUE_PAUSED ;
 int QUEUE_STARTED ;
 int ieee80211_wake_queue (int ,int) ;
 int stub1 (struct data_queue*) ;
 int test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

void rt2x00queue_unpause_queue(struct data_queue *queue)
{
 if (!test_bit(DEVICE_STATE_PRESENT, &queue->rt2x00dev->flags) ||
     !test_bit(QUEUE_STARTED, &queue->flags) ||
     !test_and_clear_bit(QUEUE_PAUSED, &queue->flags))
  return;

 switch (queue->qid) {
 case 129:
 case 130:
 case 132:
 case 131:




  ieee80211_wake_queue(queue->rt2x00dev->hw, queue->qid);
  break;
 case 128:




  queue->rt2x00dev->ops->lib->kick_queue(queue);
 default:
  break;
 }
}
