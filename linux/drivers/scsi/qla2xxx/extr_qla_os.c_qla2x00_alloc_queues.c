
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsp_que {int dummy; } ;
typedef struct rsp_que req_que ;
struct qla_qpair {int dummy; } ;
struct qla_hw_data {struct rsp_que** req_q_map; struct rsp_que** rsp_q_map; struct rsp_que** base_qpair; int req_qid_map; int rsp_qid_map; void* queue_pair_map; scalar_t__ max_qpairs; scalar_t__ max_rsp_queues; scalar_t__ max_req_queues; int pdev; } ;
typedef int scsi_qla_host_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* kcalloc (scalar_t__,int,int ) ;
 int kfree (struct rsp_que**) ;
 struct rsp_que** kzalloc (int,int ) ;
 int * pci_get_drvdata (int ) ;
 scalar_t__ ql2xmqsupport ;
 scalar_t__ ql2xnvmeenable ;
 int ql_log (int ,int *,int,char*) ;
 int ql_log_fatal ;
 int ql_log_warn ;
 int qla_init_base_qpair (int *,struct rsp_que*,struct rsp_que*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int qla2x00_alloc_queues(struct qla_hw_data *ha, struct req_que *req,
    struct rsp_que *rsp)
{
 scsi_qla_host_t *vha = pci_get_drvdata(ha->pdev);

 ha->req_q_map = kcalloc(ha->max_req_queues, sizeof(struct req_que *),
    GFP_KERNEL);
 if (!ha->req_q_map) {
  ql_log(ql_log_fatal, vha, 0x003b,
      "Unable to allocate memory for request queue ptrs.\n");
  goto fail_req_map;
 }

 ha->rsp_q_map = kcalloc(ha->max_rsp_queues, sizeof(struct rsp_que *),
    GFP_KERNEL);
 if (!ha->rsp_q_map) {
  ql_log(ql_log_fatal, vha, 0x003c,
      "Unable to allocate memory for response queue ptrs.\n");
  goto fail_rsp_map;
 }

 ha->base_qpair = kzalloc(sizeof(struct qla_qpair), GFP_KERNEL);
 if (ha->base_qpair == ((void*)0)) {
  ql_log(ql_log_warn, vha, 0x00e0,
      "Failed to allocate base queue pair memory.\n");
  goto fail_base_qpair;
 }

 qla_init_base_qpair(vha, req, rsp);

 if ((ql2xmqsupport || ql2xnvmeenable) && ha->max_qpairs) {
  ha->queue_pair_map = kcalloc(ha->max_qpairs, sizeof(struct qla_qpair *),
   GFP_KERNEL);
  if (!ha->queue_pair_map) {
   ql_log(ql_log_fatal, vha, 0x0180,
       "Unable to allocate memory for queue pair ptrs.\n");
   goto fail_qpair_map;
  }
 }





 ha->rsp_q_map[0] = rsp;
 ha->req_q_map[0] = req;
 set_bit(0, ha->rsp_qid_map);
 set_bit(0, ha->req_qid_map);
 return 0;

fail_qpair_map:
 kfree(ha->base_qpair);
 ha->base_qpair = ((void*)0);
fail_base_qpair:
 kfree(ha->rsp_q_map);
 ha->rsp_q_map = ((void*)0);
fail_rsp_map:
 kfree(ha->req_q_map);
 ha->req_q_map = ((void*)0);
fail_req_map:
 return -ENOMEM;
}
