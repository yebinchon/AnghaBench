
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union be_invalidate_connection_params {int dummy; } be_invalidate_connection_params ;
struct be_ctrl_info {int mbox_lock; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct beiscsi_endpoint {scalar_t__ conn; int ep_cid; int fw_handle; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_invalidate_connection_params_in {scalar_t__ save_cfg; int cleanup_type; int cid; int session_handle; int hdr; } ;


 int BE_CLEANUP_TYPE_INVALIDATE ;
 int BE_CLEANUP_TYPE_ISSUE_TCP_RST ;
 int CMD_SUBSYSTEM_ISCSI_INI ;
 int OPCODE_ISCSI_INI_DRIVER_INVALIDATE_CONNECTION ;
 struct be_mcc_wrb* alloc_mcc_wrb (struct beiscsi_hba*,unsigned int*) ;
 int be_cmd_hdr_prepare (int *,int ,int ,int) ;
 int be_mcc_notify (struct beiscsi_hba*,unsigned int) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int ) ;
 struct be_invalidate_connection_params_in* embedded_payload (struct be_mcc_wrb*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

unsigned int beiscsi_invalidate_cxn(struct beiscsi_hba *phba,
        struct beiscsi_endpoint *beiscsi_ep)
{
 struct be_invalidate_connection_params_in *req;
 struct be_ctrl_info *ctrl = &phba->ctrl;
 struct be_mcc_wrb *wrb;
 unsigned int tag = 0;

 mutex_lock(&ctrl->mbox_lock);
 wrb = alloc_mcc_wrb(phba, &tag);
 if (!wrb) {
  mutex_unlock(&ctrl->mbox_lock);
  return 0;
 }

 req = embedded_payload(wrb);
 be_wrb_hdr_prepare(wrb, sizeof(union be_invalidate_connection_params),
      1, 0);
 be_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_ISCSI_INI,
      OPCODE_ISCSI_INI_DRIVER_INVALIDATE_CONNECTION,
      sizeof(*req));
 req->session_handle = beiscsi_ep->fw_handle;
 req->cid = beiscsi_ep->ep_cid;
 if (beiscsi_ep->conn)
  req->cleanup_type = BE_CLEANUP_TYPE_INVALIDATE;
 else
  req->cleanup_type = BE_CLEANUP_TYPE_ISSUE_TCP_RST;




 req->save_cfg = 0;
 be_mcc_notify(phba, tag);
 mutex_unlock(&ctrl->mbox_lock);
 return tag;
}
