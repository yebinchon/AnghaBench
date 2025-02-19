
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct be_dma_mem {int size; int dma; struct be_cmd_get_session_req* va; } ;
struct TYPE_5__ {unsigned int tag; int s_handle; struct be_dma_mem nonemb_cmd; } ;
struct be_ctrl_info {int mbox_lock; TYPE_3__* ptag_state; TYPE_1__* pdev; } ;
struct beiscsi_hba {TYPE_2__ boot_struct; struct be_ctrl_info ctrl; } ;
struct be_sge {void* len; void* pa_lo; void* pa_hi; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_get_session_resp {int dummy; } ;
struct be_cmd_get_session_req {int session_handle; int hdr; } ;
struct TYPE_6__ {int cbfn; int tag_state; } ;
struct TYPE_4__ {int dev; } ;


 int CMD_SUBSYSTEM_ISCSI_INI ;
 int GFP_KERNEL ;
 int MCC_TAG_STATE_ASYNC ;
 int OPCODE_ISCSI_INI_SESSION_GET_A_SESSION ;
 struct be_mcc_wrb* alloc_mcc_wrb (struct beiscsi_hba*,unsigned int*) ;
 int be_cmd_hdr_prepare (int *,int ,int ,int) ;
 int be_mcc_notify (struct beiscsi_hba*,unsigned int) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int) ;
 int beiscsi_boot_process_compl ;
 void* cpu_to_le32 (int) ;
 struct be_cmd_get_session_req* dma_alloc_coherent (int *,int,int*,int ) ;
 int memset (struct be_cmd_get_session_req*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_sge* nonembedded_sgl (struct be_mcc_wrb*) ;
 int set_bit (int ,int *) ;
 int upper_32_bits (int) ;

unsigned int beiscsi_boot_get_sinfo(struct beiscsi_hba *phba)
{
 struct be_ctrl_info *ctrl = &phba->ctrl;
 struct be_cmd_get_session_req *req;
 struct be_dma_mem *nonemb_cmd;
 struct be_mcc_wrb *wrb;
 struct be_sge *sge;
 unsigned int tag;

 mutex_lock(&ctrl->mbox_lock);
 wrb = alloc_mcc_wrb(phba, &tag);
 if (!wrb) {
  mutex_unlock(&ctrl->mbox_lock);
  return 0;
 }

 nonemb_cmd = &phba->boot_struct.nonemb_cmd;
 nonemb_cmd->size = sizeof(struct be_cmd_get_session_resp);
 nonemb_cmd->va = dma_alloc_coherent(&phba->ctrl.pdev->dev,
           nonemb_cmd->size,
           &nonemb_cmd->dma,
           GFP_KERNEL);
 if (!nonemb_cmd->va) {
  mutex_unlock(&ctrl->mbox_lock);
  return 0;
 }

 req = nonemb_cmd->va;
 memset(req, 0, sizeof(*req));
 sge = nonembedded_sgl(wrb);
 be_wrb_hdr_prepare(wrb, sizeof(*req), 0, 1);
 be_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_ISCSI_INI,
      OPCODE_ISCSI_INI_SESSION_GET_A_SESSION,
      sizeof(struct be_cmd_get_session_resp));
 req->session_handle = phba->boot_struct.s_handle;
 sge->pa_hi = cpu_to_le32(upper_32_bits(nonemb_cmd->dma));
 sge->pa_lo = cpu_to_le32(nonemb_cmd->dma & 0xFFFFFFFF);
 sge->len = cpu_to_le32(nonemb_cmd->size);

 phba->boot_struct.tag = tag;
 set_bit(MCC_TAG_STATE_ASYNC, &ctrl->ptag_state[tag].tag_state);
 ctrl->ptag_state[tag].cbfn = beiscsi_boot_process_compl;

 be_mcc_notify(phba, tag);
 mutex_unlock(&ctrl->mbox_lock);
 return tag;
}
