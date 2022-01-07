
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2x00_dev {struct data_queue* atim; struct data_queue* tx; TYPE_1__* ops; } ;
struct data_queue {int dummy; } ;
typedef enum data_queue_qid { ____Placeholder_data_queue_qid } data_queue_qid ;
struct TYPE_2__ {int const tx_queues; } ;


 int const QID_ATIM ;

__attribute__((used)) static inline struct data_queue *
rt2x00queue_get_tx_queue(struct rt2x00_dev *rt2x00dev,
    const enum data_queue_qid queue)
{
 if (queue < rt2x00dev->ops->tx_queues && rt2x00dev->tx)
  return &rt2x00dev->tx[queue];

 if (queue == QID_ATIM)
  return rt2x00dev->atim;

 return ((void*)0);
}
