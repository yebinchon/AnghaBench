
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usbg_tpg {int workqueue; struct tcm_usbg_nexus* tpg_nexus; } ;
struct TYPE_2__ {void* tag; } ;
struct usbg_cmd {int is_read; int work; int bot_tag; TYPE_1__ se_cmd; void* data_len; int unpacked_lun; int prio_attr; int cmd_buf; } ;
struct tcm_usbg_nexus {int dummy; } ;
struct f_uas {struct usbg_tpg* tpg; } ;
struct bulk_cb_wrap {scalar_t__ Signature; int Length; int Flags; int DataTransferLength; int Lun; int Tag; int CDB; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct usbg_cmd*) ;
 int TCM_SIMPLE_TAG ;
 int US_BULK_CB_SIGN ;
 int US_BULK_FLAG_IN ;
 int bot_cmd_work ;
 scalar_t__ cpu_to_le32 (int ) ;
 void* le32_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;
 int pr_err (char*) ;
 int queue_work (int ,int *) ;
 struct usbg_cmd* usbg_get_cmd (struct f_uas*,struct tcm_usbg_nexus*,int ) ;

__attribute__((used)) static int bot_submit_command(struct f_uas *fu,
  void *cmdbuf, unsigned int len)
{
 struct bulk_cb_wrap *cbw = cmdbuf;
 struct usbg_cmd *cmd;
 struct usbg_tpg *tpg = fu->tpg;
 struct tcm_usbg_nexus *tv_nexus;
 u32 cmd_len;

 if (cbw->Signature != cpu_to_le32(US_BULK_CB_SIGN)) {
  pr_err("Wrong signature on CBW\n");
  return -EINVAL;
 }
 if (len != 31) {
  pr_err("Wrong length for CBW\n");
  return -EINVAL;
 }

 cmd_len = cbw->Length;
 if (cmd_len < 1 || cmd_len > 16)
  return -EINVAL;

 tv_nexus = tpg->tpg_nexus;
 if (!tv_nexus) {
  pr_err("Missing nexus, ignoring command\n");
  return -ENODEV;
 }

 cmd = usbg_get_cmd(fu, tv_nexus, cbw->Tag);
 if (IS_ERR(cmd)) {
  pr_err("usbg_get_cmd failed\n");
  return -ENOMEM;
 }
 memcpy(cmd->cmd_buf, cbw->CDB, cmd_len);

 cmd->bot_tag = cbw->Tag;
 cmd->prio_attr = TCM_SIMPLE_TAG;
 cmd->unpacked_lun = cbw->Lun;
 cmd->is_read = cbw->Flags & US_BULK_FLAG_IN ? 1 : 0;
 cmd->data_len = le32_to_cpu(cbw->DataTransferLength);
 cmd->se_cmd.tag = le32_to_cpu(cmd->bot_tag);

 INIT_WORK(&cmd->work, bot_cmd_work);
 queue_work(tpg->workqueue, &cmd->work);

 return 0;
}
