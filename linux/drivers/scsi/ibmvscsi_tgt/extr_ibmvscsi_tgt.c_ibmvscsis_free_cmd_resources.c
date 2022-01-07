
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_info {int debit; int flags; int wait_idle; int waiting_rsp; int schedule_q; int active_q; int free_cmd; int dev; } ;
struct iu_entry {int dummy; } ;
struct ibmvscsis_cmd {int type; int list; struct iu_entry* iue; } ;



 int PROCESSING_MAD ;



 int WAIT_FOR_IDLE ;
 int complete (int *) ;
 int dev_err (int *,char*,int) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int srp_iu_put (struct iu_entry*) ;

__attribute__((used)) static void ibmvscsis_free_cmd_resources(struct scsi_info *vscsi,
      struct ibmvscsis_cmd *cmd)
{
 struct iu_entry *iue = cmd->iue;

 switch (cmd->type) {
 case 129:
 case 130:




  if (vscsi->debit)
   vscsi->debit -= 1;
  break;
 case 131:
  vscsi->flags &= ~PROCESSING_MAD;
  break;
 case 128:
  break;
 default:
  dev_err(&vscsi->dev, "free_cmd_resources unknown type %d\n",
   cmd->type);
  break;
 }

 cmd->iue = ((void*)0);
 list_add_tail(&cmd->list, &vscsi->free_cmd);
 srp_iu_put(iue);

 if (list_empty(&vscsi->active_q) && list_empty(&vscsi->schedule_q) &&
     list_empty(&vscsi->waiting_rsp) && (vscsi->flags & WAIT_FOR_IDLE)) {
  vscsi->flags &= ~WAIT_FOR_IDLE;
  complete(&vscsi->wait_idle);
 }
}
