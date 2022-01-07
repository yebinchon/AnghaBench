
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2x00_dev {TYPE_1__* ops; } ;
struct data_queue {int qid; int aifs; int cw_min; int cw_max; int limit; int threshold; scalar_t__ txop; struct rt2x00_dev* rt2x00dev; int index_lock; int tx_lock; int status_lock; } ;
typedef enum data_queue_qid { ____Placeholder_data_queue_qid } data_queue_qid ;
struct TYPE_2__ {int (* queue_init ) (struct data_queue*) ;} ;


 int DIV_ROUND_UP (int ,int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int stub1 (struct data_queue*) ;

__attribute__((used)) static void rt2x00queue_init(struct rt2x00_dev *rt2x00dev,
        struct data_queue *queue, enum data_queue_qid qid)
{
 mutex_init(&queue->status_lock);
 spin_lock_init(&queue->tx_lock);
 spin_lock_init(&queue->index_lock);

 queue->rt2x00dev = rt2x00dev;
 queue->qid = qid;
 queue->txop = 0;
 queue->aifs = 2;
 queue->cw_min = 5;
 queue->cw_max = 10;

 rt2x00dev->ops->queue_init(queue);

 queue->threshold = DIV_ROUND_UP(queue->limit, 10);
}
