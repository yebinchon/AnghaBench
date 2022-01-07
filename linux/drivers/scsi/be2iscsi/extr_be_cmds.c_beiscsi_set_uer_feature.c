
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct be_ctrl_info {int mbox_lock; int mbox_mem; } ;
struct beiscsi_hba {int state; int ue2rp; struct be_ctrl_info ctrl; } ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_7__ {int ue2rp; } ;
struct TYPE_6__ {int uer; } ;
struct TYPE_8__ {TYPE_3__ resp; TYPE_2__ req; } ;
struct TYPE_5__ {int req_hdr; } ;
struct be_cmd_set_features {int param_len; TYPE_4__ param; int feature; TYPE_1__ h; } ;


 int BEISCSI_HBA_UER_SUPP ;
 int BEISCSI_LOG_INIT ;
 int BE_CMD_SET_FEATURE_UER ;
 int BE_CMD_UER_SUPP_BIT ;
 int CMD_SUBSYSTEM_COMMON ;
 int EMBED_MBX_MAX_PAYLOAD_SIZE ;
 int KERN_INFO ;
 int MCC_STATUS_ILLEGAL_REQUEST ;
 int MCC_STATUS_INVALID_LENGTH ;
 int OPCODE_COMMON_SET_FEATURES ;
 int __beiscsi_log (struct beiscsi_hba*,int ,char*) ;
 int be_cmd_hdr_prepare (int *,int ,int ,int ) ;
 int be_mbox_notify (struct be_ctrl_info*) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int ) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 struct be_cmd_set_features* embedded_payload (struct be_mcc_wrb*) ;
 int memset (struct be_mcc_wrb*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 struct be_mcc_wrb* wrb_from_mbox (int *) ;

int beiscsi_set_uer_feature(struct beiscsi_hba *phba)
{
 struct be_ctrl_info *ctrl = &phba->ctrl;
 struct be_cmd_set_features *ioctl;
 struct be_mcc_wrb *wrb;
 int ret = 0;

 mutex_lock(&ctrl->mbox_lock);
 wrb = wrb_from_mbox(&ctrl->mbox_mem);
 memset(wrb, 0, sizeof(*wrb));
 ioctl = embedded_payload(wrb);

 be_wrb_hdr_prepare(wrb, sizeof(*ioctl), 1, 0);
 be_cmd_hdr_prepare(&ioctl->h.req_hdr, CMD_SUBSYSTEM_COMMON,
      OPCODE_COMMON_SET_FEATURES,
      EMBED_MBX_MAX_PAYLOAD_SIZE);
 ioctl->feature = BE_CMD_SET_FEATURE_UER;
 ioctl->param_len = sizeof(ioctl->param.req);
 ioctl->param.req.uer = BE_CMD_UER_SUPP_BIT;
 ret = be_mbox_notify(ctrl);
 if (!ret) {
  phba->ue2rp = ioctl->param.resp.ue2rp;
  set_bit(BEISCSI_HBA_UER_SUPP, &phba->state);
  beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_INIT,
       "BG_%d : HBA error recovery supported\n");
 } else {




  if (ret == MCC_STATUS_ILLEGAL_REQUEST ||
      ret == MCC_STATUS_INVALID_LENGTH)
   __beiscsi_log(phba, KERN_INFO,
          "BG_%d : HBA error recovery not supported\n");
 }

 mutex_unlock(&ctrl->mbox_lock);
 return ret;
}
