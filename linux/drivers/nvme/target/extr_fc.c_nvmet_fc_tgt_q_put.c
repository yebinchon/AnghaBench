
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fc_tgt_queue {int ref; } ;


 int kref_put (int *,int ) ;
 int nvmet_fc_tgt_queue_free ;

__attribute__((used)) static void
nvmet_fc_tgt_q_put(struct nvmet_fc_tgt_queue *queue)
{
 kref_put(&queue->ref, nvmet_fc_tgt_queue_free);
}
