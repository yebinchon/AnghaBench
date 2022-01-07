
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint ;
struct viosrp_crq {int dummy; } ;
struct srp_tsk_mgmt {int tag; } ;
struct srp_cmd {int opcode; int tag; } ;
struct scsi_info {scalar_t__ request_limit; scalar_t__ debit; scalar_t__ state; int dev; int work_q; int schedule_q; } ;
struct iu_entry {int dummy; } ;
struct TYPE_5__ {int tag; } ;
struct ibmvscsis_cmd {int work; int list; int type; TYPE_2__ rsp; struct iu_entry* iue; } ;
struct TYPE_4__ {struct srp_tsk_mgmt tsk_mgmt; struct srp_cmd cmd; } ;
struct TYPE_6__ {TYPE_1__ srp; } ;


 scalar_t__ CONNECTED ;
 int ERR_DISCONNECT_RECONNECT ;
 int SCSI_CDB ;





 scalar_t__ SRP_PROCESSING ;

 int TASK_MANAGEMENT ;
 int dev_dbg (int *,char*,int ,int ) ;
 int dev_err (int *,char*,scalar_t__,...) ;
 long ibmvscsis_copy_crq_packet (struct scsi_info*,struct ibmvscsis_cmd*,struct viosrp_crq*) ;
 int ibmvscsis_free_cmd_resources (struct scsi_info*,struct ibmvscsis_cmd*) ;
 struct ibmvscsis_cmd* ibmvscsis_get_free_cmd (struct scsi_info*) ;
 int ibmvscsis_post_disconnect (struct scsi_info*,int ,int ) ;
 long ibmvscsis_srp_i_logout (struct scsi_info*,struct ibmvscsis_cmd*,struct viosrp_crq*) ;
 long ibmvscsis_srp_login (struct scsi_info*,struct ibmvscsis_cmd*,struct viosrp_crq*) ;
 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 TYPE_3__* vio_iu (struct iu_entry*) ;

__attribute__((used)) static void ibmvscsis_srp_cmd(struct scsi_info *vscsi, struct viosrp_crq *crq)
{
 struct ibmvscsis_cmd *cmd;
 struct iu_entry *iue;
 struct srp_cmd *srp;
 struct srp_tsk_mgmt *tsk;
 long rc;

 if (vscsi->request_limit - vscsi->debit <= 0) {

  dev_err(&vscsi->dev, "Client exceeded the request limit (%d), debit %d\n",
   vscsi->request_limit, vscsi->debit);
  ibmvscsis_post_disconnect(vscsi, ERR_DISCONNECT_RECONNECT, 0);
  return;
 }

 cmd = ibmvscsis_get_free_cmd(vscsi);
 if (!cmd) {
  dev_err(&vscsi->dev, "srp_cmd failed to get cmd, debit %d\n",
   vscsi->debit);
  ibmvscsis_post_disconnect(vscsi, ERR_DISCONNECT_RECONNECT, 0);
  return;
 }
 iue = cmd->iue;
 srp = &vio_iu(iue)->srp.cmd;

 rc = ibmvscsis_copy_crq_packet(vscsi, cmd, crq);
 if (rc) {
  ibmvscsis_free_cmd_resources(vscsi, cmd);
  return;
 }

 if (vscsi->state == SRP_PROCESSING) {
  switch (srp->opcode) {
  case 129:
   rc = ibmvscsis_srp_login(vscsi, cmd, crq);
   break;

  case 128:
   tsk = &vio_iu(iue)->srp.tsk_mgmt;
   dev_dbg(&vscsi->dev, "tsk_mgmt tag: %llu (0x%llx)\n",
    tsk->tag, tsk->tag);
   cmd->rsp.tag = tsk->tag;
   vscsi->debit += 1;
   cmd->type = TASK_MANAGEMENT;
   list_add_tail(&cmd->list, &vscsi->schedule_q);
   queue_work(vscsi->work_q, &cmd->work);
   break;

  case 132:
   dev_dbg(&vscsi->dev, "srp_cmd tag: %llu (0x%llx)\n",
    srp->tag, srp->tag);
   cmd->rsp.tag = srp->tag;
   vscsi->debit += 1;
   cmd->type = SCSI_CDB;




   list_add_tail(&cmd->list, &vscsi->schedule_q);
   queue_work(vscsi->work_q, &cmd->work);
   break;

  case 130:
   rc = ibmvscsis_srp_i_logout(vscsi, cmd, crq);
   break;

  case 131:
  case 133:
  default:
   ibmvscsis_free_cmd_resources(vscsi, cmd);
   dev_err(&vscsi->dev, "invalid srp cmd, opcode %d\n",
    (uint)srp->opcode);
   ibmvscsis_post_disconnect(vscsi,
        ERR_DISCONNECT_RECONNECT, 0);
   break;
  }
 } else if (srp->opcode == 129 && vscsi->state == CONNECTED) {
  rc = ibmvscsis_srp_login(vscsi, cmd, crq);
 } else {
  ibmvscsis_free_cmd_resources(vscsi, cmd);
  dev_err(&vscsi->dev, "Invalid state %d to handle srp cmd\n",
   vscsi->state);
  ibmvscsis_post_disconnect(vscsi, ERR_DISCONNECT_RECONNECT, 0);
 }
}
