
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct rsp_que {int id; int length; scalar_t__ dma; int * ring; TYPE_1__* msix; } ;
struct qla_hw_data {int vport_lock; int rsp_qid_map; int ** rsp_q_map; TYPE_2__* pdev; } ;
typedef int response_t ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int * handle; scalar_t__ in_use; scalar_t__ have_irq; int vector; } ;


 int clear_bit (int,int ) ;
 int dma_free_coherent (int *,int,int *,scalar_t__) ;
 int free_irq (int ,int *) ;
 int kfree (struct rsp_que*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
qla25xx_free_rsp_que(struct scsi_qla_host *vha, struct rsp_que *rsp)
{
 struct qla_hw_data *ha = vha->hw;
 uint16_t que_id = rsp->id;

 if (rsp->msix && rsp->msix->have_irq) {
  free_irq(rsp->msix->vector, rsp->msix->handle);
  rsp->msix->have_irq = 0;
  rsp->msix->in_use = 0;
  rsp->msix->handle = ((void*)0);
 }
 dma_free_coherent(&ha->pdev->dev, (rsp->length + 1) *
  sizeof(response_t), rsp->ring, rsp->dma);
 rsp->ring = ((void*)0);
 rsp->dma = 0;
 if (que_id) {
  ha->rsp_q_map[que_id] = ((void*)0);
  mutex_lock(&ha->vport_lock);
  clear_bit(que_id, ha->rsp_qid_map);
  mutex_unlock(&ha->vport_lock);
 }
 kfree(rsp);
 rsp = ((void*)0);
}
