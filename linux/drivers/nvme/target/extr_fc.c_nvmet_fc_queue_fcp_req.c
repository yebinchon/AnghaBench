
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_fc_tgtport {TYPE_1__* ops; } ;
struct nvmet_fc_tgt_queue {int qid; } ;
struct nvmet_fc_fcp_iod {int dummy; } ;
struct nvmefc_tgt_fcp_req {int hwqid; struct nvmet_fc_fcp_iod* nvmet_fc_private; } ;
struct TYPE_2__ {int max_hw_queues; } ;


 int nvmet_fc_handle_fcp_rqst (struct nvmet_fc_tgtport*,struct nvmet_fc_fcp_iod*) ;

__attribute__((used)) static void
nvmet_fc_queue_fcp_req(struct nvmet_fc_tgtport *tgtport,
         struct nvmet_fc_tgt_queue *queue,
         struct nvmefc_tgt_fcp_req *fcpreq)
{
 struct nvmet_fc_fcp_iod *fod = fcpreq->nvmet_fc_private;





 fcpreq->hwqid = queue->qid ?
   ((queue->qid - 1) % tgtport->ops->max_hw_queues) : 0;

 nvmet_fc_handle_fcp_rqst(tgtport, fod);
}
