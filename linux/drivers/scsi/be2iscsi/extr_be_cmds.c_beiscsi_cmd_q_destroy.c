
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct beiscsi_hba {int dummy; } ;
struct be_queue_info {int id; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_ctrl_info {int mbox_lock; int pdev; int mbox_mem; } ;
struct be_cmd_req_q_destroy {int id; int hdr; } ;


 int BEISCSI_LOG_INIT ;
 int BUG () ;
 int CMD_SUBSYSTEM_COMMON ;
 int CMD_SUBSYSTEM_ISCSI ;
 int KERN_INFO ;
 int OPCODE_COMMON_CQ_DESTROY ;
 int OPCODE_COMMON_EQ_DESTROY ;
 int OPCODE_COMMON_ISCSI_CFG_REMOVE_SGL_PAGES ;
 int OPCODE_COMMON_ISCSI_DEFQ_DESTROY ;
 int OPCODE_COMMON_ISCSI_WRBQ_DESTROY ;
 int OPCODE_COMMON_MCC_DESTROY ;






 int be_cmd_hdr_prepare (int *,int ,int ,int) ;
 int be_mbox_notify (struct be_ctrl_info*) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int ) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,int) ;
 int cpu_to_le16 (int ) ;
 struct be_cmd_req_q_destroy* embedded_payload (struct be_mcc_wrb*) ;
 int memset (struct be_mcc_wrb*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct beiscsi_hba* pci_get_drvdata (int ) ;
 struct be_mcc_wrb* wrb_from_mbox (int *) ;

int beiscsi_cmd_q_destroy(struct be_ctrl_info *ctrl, struct be_queue_info *q,
     int queue_type)
{
 struct be_mcc_wrb *wrb = wrb_from_mbox(&ctrl->mbox_mem);
 struct be_cmd_req_q_destroy *req = embedded_payload(wrb);
 struct beiscsi_hba *phba = pci_get_drvdata(ctrl->pdev);
 u8 subsys = 0, opcode = 0;
 int status;

 beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_INIT,
      "BC_%d : In beiscsi_cmd_q_destroy "
      "queue_type : %d\n", queue_type);

 mutex_lock(&ctrl->mbox_lock);
 memset(wrb, 0, sizeof(*wrb));
 be_wrb_hdr_prepare(wrb, sizeof(*req), 1, 0);

 switch (queue_type) {
 case 131:
  subsys = CMD_SUBSYSTEM_COMMON;
  opcode = OPCODE_COMMON_EQ_DESTROY;
  break;
 case 133:
  subsys = CMD_SUBSYSTEM_COMMON;
  opcode = OPCODE_COMMON_CQ_DESTROY;
  break;
 case 130:
  subsys = CMD_SUBSYSTEM_COMMON;
  opcode = OPCODE_COMMON_MCC_DESTROY;
  break;
 case 128:
  subsys = CMD_SUBSYSTEM_ISCSI;
  opcode = OPCODE_COMMON_ISCSI_WRBQ_DESTROY;
  break;
 case 132:
  subsys = CMD_SUBSYSTEM_ISCSI;
  opcode = OPCODE_COMMON_ISCSI_DEFQ_DESTROY;
  break;
 case 129:
  subsys = CMD_SUBSYSTEM_ISCSI;
  opcode = OPCODE_COMMON_ISCSI_CFG_REMOVE_SGL_PAGES;
  break;
 default:
  mutex_unlock(&ctrl->mbox_lock);
  BUG();
 }
 be_cmd_hdr_prepare(&req->hdr, subsys, opcode, sizeof(*req));
 if (queue_type != 129)
  req->id = cpu_to_le16(q->id);

 status = be_mbox_notify(ctrl);

 mutex_unlock(&ctrl->mbox_lock);
 return status;
}
