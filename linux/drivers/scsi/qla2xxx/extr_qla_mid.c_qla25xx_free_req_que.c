
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct req_que {int id; int length; struct req_que* outstanding_cmds; scalar_t__ dma; int * ring; } ;
struct qla_hw_data {int vport_lock; int req_qid_map; int ** req_q_map; TYPE_1__* pdev; } ;
typedef int request_t ;
struct TYPE_2__ {int dev; } ;


 int clear_bit (int,int ) ;
 int dma_free_coherent (int *,int,int *,scalar_t__) ;
 int kfree (struct req_que*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
qla25xx_free_req_que(struct scsi_qla_host *vha, struct req_que *req)
{
 struct qla_hw_data *ha = vha->hw;
 uint16_t que_id = req->id;

 dma_free_coherent(&ha->pdev->dev, (req->length + 1) *
  sizeof(request_t), req->ring, req->dma);
 req->ring = ((void*)0);
 req->dma = 0;
 if (que_id) {
  ha->req_q_map[que_id] = ((void*)0);
  mutex_lock(&ha->vport_lock);
  clear_bit(que_id, ha->req_qid_map);
  mutex_unlock(&ha->vport_lock);
 }
 kfree(req->outstanding_cmds);
 kfree(req);
 req = ((void*)0);
}
