
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct data_queue {int qid; TYPE_1__* rt2x00dev; } ;
struct TYPE_2__ {int hw; } ;






 int ieee80211_stop_queue (int ,int) ;

__attribute__((used)) static void rt2x00queue_pause_queue_nocheck(struct data_queue *queue)
{
 switch (queue->qid) {
 case 128:
 case 129:
 case 131:
 case 130:




  ieee80211_stop_queue(queue->rt2x00dev->hw, queue->qid);
  break;
 default:
  break;
 }
}
