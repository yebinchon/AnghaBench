
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ qpairs_rsp_created; scalar_t__ qpairs_req_created; scalar_t__ qpairs_available; } ;
struct scsi_qla_host {TYPE_1__ flags; int qp_list; } ;
struct qla_qpair {int delete_in_progress; size_t id; int srb_mempool; int qp_list_elem; int rsp; int req; int ref_count; struct qla_hw_data* hw; } ;
struct qla_hw_data {int mq_lock; int num_qpairs; int qpair_qid_map; int ** queue_pair_map; } ;


 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (size_t,int ) ;
 int kfree (struct qla_qpair*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int mempool_destroy (int ) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qla25xx_delete_req_que (struct scsi_qla_host*,int ) ;
 int qla25xx_delete_rsp_que (struct scsi_qla_host*,int ) ;

int qla2xxx_delete_qpair(struct scsi_qla_host *vha, struct qla_qpair *qpair)
{
 int ret = QLA_FUNCTION_FAILED;
 struct qla_hw_data *ha = qpair->hw;

 qpair->delete_in_progress = 1;
 while (atomic_read(&qpair->ref_count))
  msleep(500);

 ret = qla25xx_delete_req_que(vha, qpair->req);
 if (ret != QLA_SUCCESS)
  goto fail;

 ret = qla25xx_delete_rsp_que(vha, qpair->rsp);
 if (ret != QLA_SUCCESS)
  goto fail;

 mutex_lock(&ha->mq_lock);
 ha->queue_pair_map[qpair->id] = ((void*)0);
 clear_bit(qpair->id, ha->qpair_qid_map);
 ha->num_qpairs--;
 list_del(&qpair->qp_list_elem);
 if (list_empty(&vha->qp_list)) {
  vha->flags.qpairs_available = 0;
  vha->flags.qpairs_req_created = 0;
  vha->flags.qpairs_rsp_created = 0;
 }
 mempool_destroy(qpair->srb_mempool);
 kfree(qpair);
 mutex_unlock(&ha->mq_lock);

 return QLA_SUCCESS;
fail:
 return ret;
}
