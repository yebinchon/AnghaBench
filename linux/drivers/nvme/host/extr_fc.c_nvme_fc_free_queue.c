
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_fc_queue {int csn; scalar_t__ connection_id; int flags; } ;


 int NVME_FC_Q_CONNECTED ;
 int NVME_FC_Q_LIVE ;
 int atomic_set (int *,int ) ;
 int clear_bit (int ,int *) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
nvme_fc_free_queue(struct nvme_fc_queue *queue)
{
 if (!test_and_clear_bit(NVME_FC_Q_CONNECTED, &queue->flags))
  return;

 clear_bit(NVME_FC_Q_LIVE, &queue->flags);






 queue->connection_id = 0;
 atomic_set(&queue->csn, 0);
}
