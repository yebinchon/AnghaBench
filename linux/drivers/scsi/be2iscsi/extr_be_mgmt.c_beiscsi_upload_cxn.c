
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union be_tcp_upload_params {int dummy; } be_tcp_upload_params ;
struct be_ctrl_info {int mbox_lock; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct beiscsi_endpoint {scalar_t__ conn; int ep_cid; } ;
struct be_tcp_upload_params_in {int upload_type; int id; int hdr; } ;
struct be_mcc_wrb {int dummy; } ;


 int BE_UPLOAD_TYPE_ABORT ;
 int BE_UPLOAD_TYPE_GRACEFUL ;
 int CMD_COMMON_TCP_UPLOAD ;
 int OPCODE_COMMON_TCP_UPLOAD ;
 struct be_mcc_wrb* alloc_mcc_wrb (struct beiscsi_hba*,unsigned int*) ;
 int be_cmd_hdr_prepare (int *,int ,int ,int) ;
 int be_mcc_notify (struct beiscsi_hba*,unsigned int) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int ) ;
 struct be_tcp_upload_params_in* embedded_payload (struct be_mcc_wrb*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

unsigned int beiscsi_upload_cxn(struct beiscsi_hba *phba,
    struct beiscsi_endpoint *beiscsi_ep)
{
 struct be_ctrl_info *ctrl = &phba->ctrl;
 struct be_mcc_wrb *wrb;
 struct be_tcp_upload_params_in *req;
 unsigned int tag;

 mutex_lock(&ctrl->mbox_lock);
 wrb = alloc_mcc_wrb(phba, &tag);
 if (!wrb) {
  mutex_unlock(&ctrl->mbox_lock);
  return 0;
 }

 req = embedded_payload(wrb);
 be_wrb_hdr_prepare(wrb, sizeof(union be_tcp_upload_params), 1, 0);
 be_cmd_hdr_prepare(&req->hdr, CMD_COMMON_TCP_UPLOAD,
      OPCODE_COMMON_TCP_UPLOAD, sizeof(*req));
 req->id = beiscsi_ep->ep_cid;
 if (beiscsi_ep->conn)
  req->upload_type = BE_UPLOAD_TYPE_GRACEFUL;
 else
  req->upload_type = BE_UPLOAD_TYPE_ABORT;
 be_mcc_notify(phba, tag);
 mutex_unlock(&ctrl->mbox_lock);
 return tag;
}
