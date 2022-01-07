
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint ;
struct viosrp_crq {int format; scalar_t__ status; } ;
struct scsi_info {int flags; long state; long resume_state; int dev; int active_q; int waiting_rsp; int schedule_q; int debit; } ;


 long ADAPT_SUCCESS ;

 scalar_t__ CRQ_ENTRY_OVERWRITTEN ;
 long ERROR ;
 int PREP_FOR_SUSPEND_ABORTED ;
 int PREP_FOR_SUSPEND_OVERWRITE ;
 int PREP_FOR_SUSPEND_PENDING ;
 int RESPONSE_Q_DOWN ;

 long SCHEDULE_DISCONNECT ;

 int TRANS_EVENT ;





 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,long) ;
 int dev_warn (int *,char*) ;
 int ibmvscsis_delete_client_info (struct scsi_info*,int) ;
 int ibmvscsis_post_disconnect (struct scsi_info*,int const,int) ;
 int ibmvscsis_ready_for_suspend (struct scsi_info*,int) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static long ibmvscsis_trans_event(struct scsi_info *vscsi,
      struct viosrp_crq *crq)
{
 long rc = ADAPT_SUCCESS;

 dev_dbg(&vscsi->dev, "trans_event: format %d, flags 0x%x, state 0x%hx\n",
  (int)crq->format, vscsi->flags, vscsi->state);

 switch (crq->format) {
 case 139:
 case 136:
 case 137:
  ibmvscsis_delete_client_info(vscsi, 1);
  if (crq->format == 139)
   vscsi->flags &= ~PREP_FOR_SUSPEND_OVERWRITE;
  switch (vscsi->state) {
  case 138:
  case 141:
  case 131:
   break;

  case 132:
   vscsi->flags |= (RESPONSE_Q_DOWN | TRANS_EVENT);
   break;

  case 129:
   break;

  case 130:
   break;

  case 143:
   ibmvscsis_post_disconnect(vscsi, 128,
        (RESPONSE_Q_DOWN |
         TRANS_EVENT));
   break;

  case 133:
   if ((vscsi->debit > 0) ||
       !list_empty(&vscsi->schedule_q) ||
       !list_empty(&vscsi->waiting_rsp) ||
       !list_empty(&vscsi->active_q)) {
    dev_dbg(&vscsi->dev, "debit %d, sched %d, wait %d, active %d\n",
     vscsi->debit,
     (int)list_empty(&vscsi->schedule_q),
     (int)list_empty(&vscsi->waiting_rsp),
     (int)list_empty(&vscsi->active_q));
    dev_warn(&vscsi->dev, "connection lost with outstanding work\n");
   } else {
    dev_dbg(&vscsi->dev, "trans_event: SRP Processing, but no outstanding work\n");
   }

   ibmvscsis_post_disconnect(vscsi, 128,
        (RESPONSE_Q_DOWN |
         TRANS_EVENT));
   break;

  case 142:
  case 140:
  case 128:
   vscsi->flags |= (RESPONSE_Q_DOWN | TRANS_EVENT);
   break;
  }
  break;

 case 135:
  dev_dbg(&vscsi->dev, "Prep for Suspend, crq status = 0x%x\n",
   (int)crq->status);
  switch (vscsi->state) {
  case 141:
  case 130:
  case 143:
   ibmvscsis_ready_for_suspend(vscsi, 0);
   break;
  case 133:
   vscsi->resume_state = vscsi->state;
   vscsi->flags |= PREP_FOR_SUSPEND_PENDING;
   if (crq->status == CRQ_ENTRY_OVERWRITTEN)
    vscsi->flags |= PREP_FOR_SUSPEND_OVERWRITE;
   ibmvscsis_post_disconnect(vscsi, 128, 0);
   break;
  case 138:
  case 131:
  case 132:
  case 129:
  case 142:
  case 140:
  case 128:
   dev_err(&vscsi->dev, "Invalid state for Prepare for Suspend Trans Event: 0x%x\n",
    vscsi->state);
   break;
  }
  break;

 case 134:
  dev_dbg(&vscsi->dev, "Resume from Suspend, crq status = 0x%x\n",
   (int)crq->status);
  if (vscsi->flags & PREP_FOR_SUSPEND_PENDING) {
   vscsi->flags |= PREP_FOR_SUSPEND_ABORTED;
  } else {
   if ((crq->status == CRQ_ENTRY_OVERWRITTEN) ||
       (vscsi->flags & PREP_FOR_SUSPEND_OVERWRITE)) {
    ibmvscsis_post_disconnect(vscsi,
         140,
         0);
    vscsi->flags &= ~PREP_FOR_SUSPEND_OVERWRITE;
   }
  }
  break;

 default:
  rc = ERROR;
  dev_err(&vscsi->dev, "trans_event: invalid format %d\n",
   (uint)crq->format);
  ibmvscsis_post_disconnect(vscsi, 142,
       RESPONSE_Q_DOWN);
  break;
 }

 rc = vscsi->flags & SCHEDULE_DISCONNECT;

 dev_dbg(&vscsi->dev, "Leaving trans_event: flags 0x%x, state 0x%hx, rc %ld\n",
  vscsi->flags, vscsi->state, rc);

 return rc;
}
