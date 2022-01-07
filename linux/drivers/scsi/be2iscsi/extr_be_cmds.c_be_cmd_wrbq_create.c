
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct hwi_wrb_context {int doorbell_offset; int ulp_num; int cid; } ;
struct TYPE_2__ {scalar_t__ dual_ulp_aware; } ;
struct beiscsi_hba {TYPE_1__ fw_config; } ;
struct be_wrbq_create_resp {int doorbell_offset; int ulp_num; int cid; } ;
struct be_wrbq_create_req {int dua_feature; int pages; int ulp_num; int num_pages; int hdr; } ;
struct be_queue_info {int created; int id; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_dma_mem {int size; int va; } ;
struct be_ctrl_info {int mbox_lock; int pdev; int mbox_mem; } ;


 int ARRAY_SIZE (int ) ;
 int BEISCSI_BIND_Q_TO_ULP_BIT ;
 int BEISCSI_DUAL_ULP_AWARE_BIT ;
 int BEISCSI_ULP0 ;
 int CMD_SUBSYSTEM_ISCSI ;
 int DB_TXULP0_OFFSET ;
 int OPCODE_COMMON_ISCSI_WRBQ_CREATE ;
 int PAGES_4K_SPANNED (int ,int ) ;
 int be_cmd_hdr_prepare (int *,int ,int ,int) ;
 int be_cmd_page_addrs_prepare (int ,int ,struct be_dma_mem*) ;
 int be_mbox_notify (struct be_ctrl_info*) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int ) ;
 void* embedded_payload (struct be_mcc_wrb*) ;
 int le16_to_cpu (int ) ;
 int memset (struct be_mcc_wrb*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct beiscsi_hba* pci_get_drvdata (int ) ;
 struct be_mcc_wrb* wrb_from_mbox (int *) ;

int be_cmd_wrbq_create(struct be_ctrl_info *ctrl,
   struct be_dma_mem *q_mem,
   struct be_queue_info *wrbq,
   struct hwi_wrb_context *pwrb_context,
   uint8_t ulp_num)
{
 struct be_mcc_wrb *wrb = wrb_from_mbox(&ctrl->mbox_mem);
 struct be_wrbq_create_req *req = embedded_payload(wrb);
 struct be_wrbq_create_resp *resp = embedded_payload(wrb);
 struct beiscsi_hba *phba = pci_get_drvdata(ctrl->pdev);
 int status;

 mutex_lock(&ctrl->mbox_lock);
 memset(wrb, 0, sizeof(*wrb));

 be_wrb_hdr_prepare(wrb, sizeof(*req), 1, 0);

 be_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_ISCSI,
  OPCODE_COMMON_ISCSI_WRBQ_CREATE, sizeof(*req));
 req->num_pages = PAGES_4K_SPANNED(q_mem->va, q_mem->size);

 if (phba->fw_config.dual_ulp_aware) {
  req->ulp_num = ulp_num;
  req->dua_feature |= (1 << BEISCSI_DUAL_ULP_AWARE_BIT);
  req->dua_feature |= (1 << BEISCSI_BIND_Q_TO_ULP_BIT);
 }

 be_cmd_page_addrs_prepare(req->pages, ARRAY_SIZE(req->pages), q_mem);

 status = be_mbox_notify(ctrl);
 if (!status) {
  wrbq->id = le16_to_cpu(resp->cid);
  wrbq->created = 1;

  pwrb_context->cid = wrbq->id;
  if (!phba->fw_config.dual_ulp_aware) {
   pwrb_context->doorbell_offset = DB_TXULP0_OFFSET;
   pwrb_context->ulp_num = BEISCSI_ULP0;
  } else {
   pwrb_context->ulp_num = resp->ulp_num;
   pwrb_context->doorbell_offset = resp->doorbell_offset;
  }
 }
 mutex_unlock(&ctrl->mbox_lock);
 return status;
}
