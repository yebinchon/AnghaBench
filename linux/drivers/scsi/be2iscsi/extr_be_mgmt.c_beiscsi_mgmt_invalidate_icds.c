
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union be_invldt_cmds_params {int dummy; } be_invldt_cmds_params ;
struct invldt_cmds_params_in {int icd_count; TYPE_1__* table; int cleanup_type; scalar_t__ ref_handle; int hdr; } ;
struct invldt_cmd_tbl {int cid; int icd; } ;
struct be_ctrl_info {TYPE_2__* pdev; int mbox_lock; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_sge {void* len; void* pa_lo; void* pa_hi; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int dma; struct invldt_cmds_params_in* va; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int cid; int icd; } ;


 int BEISCSI_LOG_EH ;
 unsigned int BE_INVLDT_CMD_TBL_SZ ;
 int CMD_ISCSI_COMMAND_INVALIDATE ;
 int CMD_SUBSYSTEM_ISCSI ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int OPCODE_COMMON_ISCSI_ERROR_RECOVERY_INVALIDATE_COMMANDS ;
 struct be_mcc_wrb* alloc_mcc_wrb (struct beiscsi_hba*,unsigned int*) ;
 int be_cmd_hdr_prepare (int *,int ,int ,int) ;
 int be_mcc_notify (struct beiscsi_hba*,unsigned int) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 int beiscsi_mccq_compl_wait (struct beiscsi_hba*,unsigned int,int *,struct be_dma_mem*) ;
 void* cpu_to_le32 (int) ;
 struct invldt_cmds_params_in* dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,struct invldt_cmds_params_in*,int ) ;
 int lower_32_bits (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_sge* nonembedded_sgl (struct be_mcc_wrb*) ;
 int upper_32_bits (int ) ;

int beiscsi_mgmt_invalidate_icds(struct beiscsi_hba *phba,
     struct invldt_cmd_tbl *inv_tbl,
     unsigned int nents)
{
 struct be_ctrl_info *ctrl = &phba->ctrl;
 struct invldt_cmds_params_in *req;
 struct be_dma_mem nonemb_cmd;
 struct be_mcc_wrb *wrb;
 unsigned int i, tag;
 struct be_sge *sge;
 int rc;

 if (!nents || nents > BE_INVLDT_CMD_TBL_SZ)
  return -EINVAL;

 nonemb_cmd.size = sizeof(union be_invldt_cmds_params);
 nonemb_cmd.va = dma_alloc_coherent(&phba->ctrl.pdev->dev,
        nonemb_cmd.size, &nonemb_cmd.dma,
        GFP_KERNEL);
 if (!nonemb_cmd.va) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_EH,
       "BM_%d : invldt_cmds_params alloc failed\n");
  return -ENOMEM;
 }

 mutex_lock(&ctrl->mbox_lock);
 wrb = alloc_mcc_wrb(phba, &tag);
 if (!wrb) {
  mutex_unlock(&ctrl->mbox_lock);
  dma_free_coherent(&phba->ctrl.pdev->dev, nonemb_cmd.size,
        nonemb_cmd.va, nonemb_cmd.dma);
  return -ENOMEM;
 }

 req = nonemb_cmd.va;
 be_wrb_hdr_prepare(wrb, nonemb_cmd.size, 0, 1);
 be_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_ISCSI,
   OPCODE_COMMON_ISCSI_ERROR_RECOVERY_INVALIDATE_COMMANDS,
   sizeof(*req));
 req->ref_handle = 0;
 req->cleanup_type = CMD_ISCSI_COMMAND_INVALIDATE;
 for (i = 0; i < nents; i++) {
  req->table[i].icd = inv_tbl[i].icd;
  req->table[i].cid = inv_tbl[i].cid;
  req->icd_count++;
 }
 sge = nonembedded_sgl(wrb);
 sge->pa_hi = cpu_to_le32(upper_32_bits(nonemb_cmd.dma));
 sge->pa_lo = cpu_to_le32(lower_32_bits(nonemb_cmd.dma));
 sge->len = cpu_to_le32(nonemb_cmd.size);

 be_mcc_notify(phba, tag);
 mutex_unlock(&ctrl->mbox_lock);

 rc = beiscsi_mccq_compl_wait(phba, tag, ((void*)0), &nonemb_cmd);
 if (rc != -EBUSY)
  dma_free_coherent(&phba->ctrl.pdev->dev, nonemb_cmd.size,
        nonemb_cmd.va, nonemb_cmd.dma);
 return rc;
}
