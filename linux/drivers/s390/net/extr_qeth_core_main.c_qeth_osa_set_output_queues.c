
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int no_out_queues; int default_out_queue; int state; } ;
struct qeth_card {TYPE_2__ qdio; TYPE_1__* gdev; TYPE_3__* dev; } ;
struct TYPE_6__ {int num_tx_queues; } ;
struct TYPE_4__ {int dev; } ;


 int QETH_DEFAULT_QUEUE ;
 scalar_t__ QETH_QDIO_UNINITIALIZED ;
 scalar_t__ atomic_read (int *) ;
 int dev_info (int *,char*) ;
 int netif_set_real_num_tx_queues (TYPE_3__*,unsigned int) ;
 int qeth_free_qdio_queues (struct qeth_card*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int qeth_osa_set_output_queues(struct qeth_card *card, bool single)
{
 unsigned int count = single ? 1 : card->dev->num_tx_queues;
 int rc;

 rtnl_lock();
 rc = netif_set_real_num_tx_queues(card->dev, count);
 rtnl_unlock();

 if (rc)
  return rc;

 if (card->qdio.no_out_queues == count)
  return 0;

 if (atomic_read(&card->qdio.state) != QETH_QDIO_UNINITIALIZED)
  qeth_free_qdio_queues(card);

 if (count == 1)
  dev_info(&card->gdev->dev, "Priority Queueing not supported\n");

 card->qdio.default_out_queue = single ? 0 : QETH_DEFAULT_QUEUE;
 card->qdio.no_out_queues = count;
 return 0;
}
