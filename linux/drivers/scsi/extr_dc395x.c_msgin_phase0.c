
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ScsiReqBlk {int* msgin_buf; int state; int msg_count; int * msgout_buf; int cmd; int total_xfer_length; } ;
struct DeviceCtlBlk {int identify_msg; int flag; int target_lun; int target_id; } ;
struct AdapterCtlBlk {scalar_t__ msg_len; struct DeviceCtlBlk* active_dcb; } ;



 int ABORT_DEV_ ;

 int DBG_0 ;
 int DC395x_ENABLE_MSGOUT ;
 int DC395x_read8 (struct AdapterCtlBlk*,int ) ;
 int DC395x_write16 (struct AdapterCtlBlk*,int ,int) ;
 int DC395x_write8 (struct AdapterCtlBlk*,int ,int ) ;

 int DO_CLRATN ;
 int DO_DATALATCH ;

 int EXTENDED_SDTR ;
 int EXTENDED_WDTR ;

 int IDENTIFY_BASE ;



 int PH_BUS_FREE ;


 int SCMD_MSGACCEPT ;

 int SRB_DISCONNECT ;
 int SRB_DO_SYNC_NEGO ;
 int SRB_DO_WIDE_NEGO ;
 int SRB_MSGIN ;
 int SRB_MSGOUT ;
 int TRM_S1040_SCSI_COMMAND ;
 int TRM_S1040_SCSI_CONTROL ;
 int TRM_S1040_SCSI_FIFO ;
 int dprintkdbg (int ,char*,...) ;
 int enable_msgout_abort (struct AdapterCtlBlk*,struct ScsiReqBlk*) ;
 scalar_t__ msgin_completed (int*,scalar_t__) ;
 struct ScsiReqBlk* msgin_qtag (struct AdapterCtlBlk*,struct DeviceCtlBlk*,int) ;
 int msgin_reject (struct AdapterCtlBlk*,struct ScsiReqBlk*) ;
 int msgin_set_async (struct AdapterCtlBlk*,struct ScsiReqBlk*) ;
 int msgin_set_nowide (struct AdapterCtlBlk*,struct ScsiReqBlk*) ;
 int msgin_set_sync (struct AdapterCtlBlk*,struct ScsiReqBlk*) ;
 int msgin_set_wide (struct AdapterCtlBlk*,struct ScsiReqBlk*) ;

__attribute__((used)) static void msgin_phase0(struct AdapterCtlBlk *acb, struct ScsiReqBlk *srb,
  u16 *pscsi_status)
{
 struct DeviceCtlBlk *dcb = acb->active_dcb;
 dprintkdbg(DBG_0, "msgin_phase0: (0x%p)\n", srb->cmd);

 srb->msgin_buf[acb->msg_len++] = DC395x_read8(acb, TRM_S1040_SCSI_FIFO);
 if (msgin_completed(srb->msgin_buf, acb->msg_len)) {

  switch (srb->msgin_buf[0]) {
  case 136:
   srb->state = SRB_DISCONNECT;
   break;

  case 128:
  case 134:
  case 131:
   srb =
       msgin_qtag(acb, dcb,
           srb->msgin_buf[1]);
   break;

  case 133:
   DC395x_write16(acb, TRM_S1040_SCSI_CONTROL,
           DO_CLRATN | DO_DATALATCH);

   if (srb->state & SRB_DO_SYNC_NEGO) {
    msgin_set_async(acb, srb);
    break;
   }

   if (srb->state & SRB_DO_WIDE_NEGO) {
    msgin_set_nowide(acb, srb);
    break;
   }
   enable_msgout_abort(acb, srb);

   break;

  case 135:

   if (srb->msgin_buf[1] == 3
       && srb->msgin_buf[2] == EXTENDED_SDTR) {
    msgin_set_sync(acb, srb);
    break;
   }

   if (srb->msgin_buf[1] == 2
       && srb->msgin_buf[2] == EXTENDED_WDTR
       && srb->msgin_buf[3] <= 2) {
    msgin_set_wide(acb, srb);
    break;
   }
   msgin_reject(acb, srb);
   break;

  case 132:

   dprintkdbg(DBG_0, "msgin_phase0: Ignore Wide Residual!\n");
   break;

  case 137:

   break;

  case 129:




   dprintkdbg(DBG_0, "msgin_phase0: (0x%p) "
    "SAVE POINTER rem=%i Ignore\n",
    srb->cmd, srb->total_xfer_length);
   break;

  case 130:
   dprintkdbg(DBG_0, "msgin_phase0: RESTORE POINTER. Ignore\n");
   break;

  case 138:
   dprintkdbg(DBG_0, "msgin_phase0: (0x%p) "
    "<%02i-%i> ABORT msg\n",
    srb->cmd, dcb->target_id,
    dcb->target_lun);
   dcb->flag |= ABORT_DEV_;
   enable_msgout_abort(acb, srb);
   break;

  default:

   if (srb->msgin_buf[0] & IDENTIFY_BASE) {
    dprintkdbg(DBG_0, "msgin_phase0: Identify msg\n");
    srb->msg_count = 1;
    srb->msgout_buf[0] = dcb->identify_msg;
    DC395x_ENABLE_MSGOUT;
    srb->state |= SRB_MSGOUT;

   }
   msgin_reject(acb, srb);
  }


  srb->state &= ~SRB_MSGIN;
  acb->msg_len = 0;
 }
 *pscsi_status = PH_BUS_FREE;
 DC395x_write16(acb, TRM_S1040_SCSI_CONTROL, DO_DATALATCH);
 DC395x_write8(acb, TRM_S1040_SCSI_COMMAND, SCMD_MSGACCEPT);
}
