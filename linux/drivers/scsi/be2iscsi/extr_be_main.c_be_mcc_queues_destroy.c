
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct be_queue_info {scalar_t__ created; } ;
struct TYPE_6__ {struct be_queue_info cq; struct be_queue_info q; } ;
struct be_ctrl_info {TYPE_3__ mcc_obj; TYPE_2__* ptag_state; int * mcc_wait; int * mcc_tag_status; TYPE_1__* pdev; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_dma_mem {scalar_t__ size; int dma; int va; } ;
struct TYPE_5__ {int tag_state; struct be_dma_mem tag_mem_state; } ;
struct TYPE_4__ {int dev; } ;


 int CQE_VALID_MASK ;
 int HZ ;
 int MAX_MCC_CMD ;
 int MCC_STATUS_FAILED ;
 int MCC_TAG_STATE_RUNNING ;
 int MCC_TAG_STATE_TIMEOUT ;
 int QTYPE_CQ ;
 int QTYPE_MCCQ ;
 int be_queue_free (struct beiscsi_hba*,struct be_queue_info*) ;
 int beiscsi_cmd_q_destroy (struct be_ctrl_info*,struct be_queue_info*,int ) ;
 int dma_free_coherent (int *,scalar_t__,int ,int ) ;
 int schedule_timeout_uninterruptible (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void be_mcc_queues_destroy(struct beiscsi_hba *phba)
{
 struct be_ctrl_info *ctrl = &phba->ctrl;
 struct be_dma_mem *ptag_mem;
 struct be_queue_info *q;
 int i, tag;

 q = &phba->ctrl.mcc_obj.q;
 for (i = 0; i < MAX_MCC_CMD; i++) {
  tag = i + 1;
  if (!test_bit(MCC_TAG_STATE_RUNNING,
         &ctrl->ptag_state[tag].tag_state))
   continue;

  if (test_bit(MCC_TAG_STATE_TIMEOUT,
        &ctrl->ptag_state[tag].tag_state)) {
   ptag_mem = &ctrl->ptag_state[tag].tag_mem_state;
   if (ptag_mem->size) {
    dma_free_coherent(&ctrl->pdev->dev,
          ptag_mem->size,
          ptag_mem->va,
          ptag_mem->dma);
    ptag_mem->size = 0;
   }
   continue;
  }






  if (waitqueue_active(&ctrl->mcc_wait[tag])) {
   ctrl->mcc_tag_status[tag] = MCC_STATUS_FAILED;
   ctrl->mcc_tag_status[tag] |= CQE_VALID_MASK;
   wake_up_interruptible(&ctrl->mcc_wait[tag]);




   while (test_bit(MCC_TAG_STATE_RUNNING,
     &ctrl->ptag_state[tag].tag_state))
    schedule_timeout_uninterruptible(HZ);
  }




 }
 if (q->created) {
  beiscsi_cmd_q_destroy(ctrl, q, QTYPE_MCCQ);
  be_queue_free(phba, q);
 }

 q = &phba->ctrl.mcc_obj.cq;
 if (q->created) {
  beiscsi_cmd_q_destroy(ctrl, q, QTYPE_CQ);
  be_queue_free(phba, q);
 }
}
