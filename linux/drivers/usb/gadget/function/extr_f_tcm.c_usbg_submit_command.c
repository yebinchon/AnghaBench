
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct usbg_tpg {int workqueue; struct tcm_usbg_nexus* tpg_nexus; } ;
struct usbg_cmd {int tag; int se_cmd; int work; int unpacked_lun; int prio_attr; int * stream; int cmd_buf; } ;
struct tcm_usbg_nexus {int dummy; } ;
struct f_uas {int flags; int * stream; struct usbg_tpg* tpg; } ;
struct command_iu {scalar_t__ iu_id; int len; int prio_attr; int lun; int cdb; int tag; } ;


 int EINVAL ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct usbg_cmd*) ;
 scalar_t__ IU_ID_COMMAND ;
 int TCM_ACA_TAG ;
 int TCM_HEAD_TAG ;
 int TCM_ORDERED_TAG ;
 int TCM_SIMPLE_TAG ;
 int UASP_SS_EP_COMP_NUM_STREAMS ;




 int USBG_MAX_CMD ;
 int USBG_USE_STREAMS ;
 int be16_to_cpup (int *) ;
 int memcpy (int ,int ,int) ;
 int pr_debug_once (char*,int) ;
 int pr_err (char*,...) ;
 int queue_work (int ,int *) ;
 int scsilun_to_int (int *) ;
 int usbg_cmd_work ;
 struct usbg_cmd* usbg_get_cmd (struct f_uas*,struct tcm_usbg_nexus*,int ) ;
 int usbg_release_cmd (int *) ;

__attribute__((used)) static int usbg_submit_command(struct f_uas *fu,
  void *cmdbuf, unsigned int len)
{
 struct command_iu *cmd_iu = cmdbuf;
 struct usbg_cmd *cmd;
 struct usbg_tpg *tpg = fu->tpg;
 struct tcm_usbg_nexus *tv_nexus;
 u32 cmd_len;
 u16 scsi_tag;

 if (cmd_iu->iu_id != IU_ID_COMMAND) {
  pr_err("Unsupported type %d\n", cmd_iu->iu_id);
  return -EINVAL;
 }

 tv_nexus = tpg->tpg_nexus;
 if (!tv_nexus) {
  pr_err("Missing nexus, ignoring command\n");
  return -EINVAL;
 }

 cmd_len = (cmd_iu->len & ~0x3) + 16;
 if (cmd_len > USBG_MAX_CMD)
  return -EINVAL;

 scsi_tag = be16_to_cpup(&cmd_iu->tag);
 cmd = usbg_get_cmd(fu, tv_nexus, scsi_tag);
 if (IS_ERR(cmd)) {
  pr_err("usbg_get_cmd failed\n");
  return -ENOMEM;
 }
 memcpy(cmd->cmd_buf, cmd_iu->cdb, cmd_len);

 if (fu->flags & USBG_USE_STREAMS) {
  if (cmd->tag > UASP_SS_EP_COMP_NUM_STREAMS)
   goto err;
  if (!cmd->tag)
   cmd->stream = &fu->stream[0];
  else
   cmd->stream = &fu->stream[cmd->tag - 1];
 } else {
  cmd->stream = &fu->stream[0];
 }

 switch (cmd_iu->prio_attr & 0x7) {
 case 130:
  cmd->prio_attr = TCM_HEAD_TAG;
  break;
 case 129:
  cmd->prio_attr = TCM_ORDERED_TAG;
  break;
 case 131:
  cmd->prio_attr = TCM_ACA_TAG;
  break;
 default:
  pr_debug_once("Unsupported prio_attr: %02x.\n",
    cmd_iu->prio_attr);

 case 128:
  cmd->prio_attr = TCM_SIMPLE_TAG;
  break;
 }

 cmd->unpacked_lun = scsilun_to_int(&cmd_iu->lun);

 INIT_WORK(&cmd->work, usbg_cmd_work);
 queue_work(tpg->workqueue, &cmd->work);

 return 0;
err:
 usbg_release_cmd(&cmd->se_cmd);
 return -EINVAL;
}
