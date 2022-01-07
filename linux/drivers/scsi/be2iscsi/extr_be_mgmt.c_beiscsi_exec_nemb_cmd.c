
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct be_ctrl_info {TYPE_2__* pdev; int mbox_lock; TYPE_1__* ptag_state; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_sge {void* len; void* pa_lo; void* pa_hi; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int dma; int va; int size; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {void (* cbfn ) (struct beiscsi_hba*,unsigned int) ;struct be_dma_mem tag_mem_state; int tag_state; } ;


 int EAGAIN ;
 int EBUSY ;
 int ENOMEM ;
 int MCC_TAG_STATE_ASYNC ;
 struct be_mcc_wrb* alloc_mcc_wrb (struct beiscsi_hba*,unsigned int*) ;
 int be_mcc_notify (struct beiscsi_hba*,unsigned int) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int ,int,int) ;
 int beiscsi_mccq_compl_wait (struct beiscsi_hba*,unsigned int,int *,struct be_dma_mem*) ;
 void* cpu_to_le32 (int ) ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int lower_32_bits (int ) ;
 int memcpy (void*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_sge* nonembedded_sgl (struct be_mcc_wrb*) ;
 int set_bit (int ,int *) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int beiscsi_exec_nemb_cmd(struct beiscsi_hba *phba,
     struct be_dma_mem *nonemb_cmd,
     void (*cbfn)(struct beiscsi_hba *,
           unsigned int),
     void *resp_buf, u32 resp_buf_len)
{
 struct be_ctrl_info *ctrl = &phba->ctrl;
 struct be_mcc_wrb *wrb;
 struct be_sge *sge;
 unsigned int tag;
 int rc = 0;

 mutex_lock(&ctrl->mbox_lock);
 wrb = alloc_mcc_wrb(phba, &tag);
 if (!wrb) {
  mutex_unlock(&ctrl->mbox_lock);
  rc = -ENOMEM;
  goto free_cmd;
 }

 sge = nonembedded_sgl(wrb);
 be_wrb_hdr_prepare(wrb, nonemb_cmd->size, 0, 1);
 sge->pa_hi = cpu_to_le32(upper_32_bits(nonemb_cmd->dma));
 sge->pa_lo = cpu_to_le32(lower_32_bits(nonemb_cmd->dma));
 sge->len = cpu_to_le32(nonemb_cmd->size);

 if (cbfn) {
  struct be_dma_mem *tag_mem;

  set_bit(MCC_TAG_STATE_ASYNC, &ctrl->ptag_state[tag].tag_state);
  ctrl->ptag_state[tag].cbfn = cbfn;
  tag_mem = &phba->ctrl.ptag_state[tag].tag_mem_state;


  tag_mem->size = nonemb_cmd->size;
  tag_mem->va = nonemb_cmd->va;
  tag_mem->dma = nonemb_cmd->dma;
 }
 be_mcc_notify(phba, tag);
 mutex_unlock(&ctrl->mbox_lock);


 if (cbfn)
  return 0;

 rc = beiscsi_mccq_compl_wait(phba, tag, ((void*)0), nonemb_cmd);


 if (resp_buf)
  memcpy(resp_buf, nonemb_cmd->va, resp_buf_len);





 if (rc == -EAGAIN)
  return rc;





 if (rc == -EBUSY)
  return rc;

free_cmd:
 dma_free_coherent(&ctrl->pdev->dev, nonemb_cmd->size,
       nonemb_cmd->va, nonemb_cmd->dma);
 return rc;
}
