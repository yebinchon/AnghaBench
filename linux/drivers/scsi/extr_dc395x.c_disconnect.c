
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ScsiReqBlk {int cmd; int state; int list; void* target_status; int retry_count; int scsi_phase; } ;
struct DeviceCtlBlk {struct ScsiReqBlk* active_srb; int srb_waiting_list; int target_lun; int target_id; int flag; } ;
struct TYPE_2__ {int delay_time; } ;
struct AdapterCtlBlk {scalar_t__ scan_devices; void* last_reset; struct DeviceCtlBlk* active_dcb; TYPE_1__ eeprom; } ;


 int ABORT_DEV_ ;
 int DBG_0 ;
 int DBG_KG ;
 scalar_t__ DC395x_MAX_RETRIES ;
 int DC395x_read8 (struct AdapterCtlBlk*,int ) ;
 int DC395x_write16 (struct AdapterCtlBlk*,int ,int ) ;
 int DID_ABORT ;
 int DO_HWRESELECT ;
 int HZ ;
 int KERN_DEBUG ;
 int KERN_ERR ;
 int PH_BUS_FREE ;
 void* SCSI_STAT_SEL_TIMEOUT ;
 int SRB_ABORT_SENT ;
 int SRB_COMPLETED ;
 int SRB_DISCONNECT ;
 int SRB_FREE ;
 int SRB_MSGOUT ;
 int SRB_READY ;
 int SRB_START_ ;
 int SRB_UNEXPECT_RESEL ;
 int TRM_S1040_SCSI_CONTROL ;
 int TRM_S1040_SCSI_SIGNAL ;
 int clear_fifo (struct AdapterCtlBlk*,char*) ;
 int doing_srb_done (struct AdapterCtlBlk*,int ,int,int) ;
 int dprintkdbg (int ,char*,int,...) ;
 int dprintkl (int ,char*,...) ;
 int free_tag (struct DeviceCtlBlk*,struct ScsiReqBlk*) ;
 void* jiffies ;
 int list_move (int *,int *) ;
 int srb_done (struct AdapterCtlBlk*,struct DeviceCtlBlk*,struct ScsiReqBlk*) ;
 int udelay (int) ;
 int waiting_process_next (struct AdapterCtlBlk*) ;
 int waiting_set_timer (struct AdapterCtlBlk*,int) ;

__attribute__((used)) static void disconnect(struct AdapterCtlBlk *acb)
{
 struct DeviceCtlBlk *dcb = acb->active_dcb;
 struct ScsiReqBlk *srb;

 if (!dcb) {
  dprintkl(KERN_ERR, "disconnect: No such device\n");
  udelay(500);

  acb->last_reset =
      jiffies + HZ / 2 +
      HZ * acb->eeprom.delay_time;
  clear_fifo(acb, "disconnectEx");
  DC395x_write16(acb, TRM_S1040_SCSI_CONTROL, DO_HWRESELECT);
  return;
 }
 srb = dcb->active_srb;
 acb->active_dcb = ((void*)0);
 dprintkdbg(DBG_0, "disconnect: (0x%p)\n", srb->cmd);

 srb->scsi_phase = PH_BUS_FREE;
 clear_fifo(acb, "disconnect");
 DC395x_write16(acb, TRM_S1040_SCSI_CONTROL, DO_HWRESELECT);
 if (srb->state & SRB_UNEXPECT_RESEL) {
  dprintkl(KERN_ERR,
   "disconnect: Unexpected reselection <%02i-%i>\n",
   dcb->target_id, dcb->target_lun);
  srb->state = 0;
  waiting_process_next(acb);
 } else if (srb->state & SRB_ABORT_SENT) {
  dcb->flag &= ~ABORT_DEV_;
  acb->last_reset = jiffies + HZ / 2 + 1;
  dprintkl(KERN_ERR, "disconnect: SRB_ABORT_SENT\n");
  doing_srb_done(acb, DID_ABORT, srb->cmd, 1);
  waiting_process_next(acb);
 } else {
  if ((srb->state & (SRB_START_ + SRB_MSGOUT))
      || !(srb->
    state & (SRB_DISCONNECT + SRB_COMPLETED))) {





   if (srb->state != SRB_START_
       && srb->state != SRB_MSGOUT) {
    srb->state = SRB_READY;
    dprintkl(KERN_DEBUG,
     "disconnect: (0x%p) Unexpected\n",
     srb->cmd);
    srb->target_status = SCSI_STAT_SEL_TIMEOUT;
    goto disc1;
   } else {

    dprintkdbg(DBG_KG, "disconnect: (0x%p) "
     "<%02i-%i> SelTO\n", srb->cmd,
     dcb->target_id, dcb->target_lun);
    if (srb->retry_count++ > DC395x_MAX_RETRIES
        || acb->scan_devices) {
     srb->target_status =
         SCSI_STAT_SEL_TIMEOUT;
     goto disc1;
    }
    free_tag(dcb, srb);
    list_move(&srb->list, &dcb->srb_waiting_list);
    dprintkdbg(DBG_KG,
     "disconnect: (0x%p) Retry\n",
     srb->cmd);
    waiting_set_timer(acb, HZ / 20);
   }
  } else if (srb->state & SRB_DISCONNECT) {
   u8 bval = DC395x_read8(acb, TRM_S1040_SCSI_SIGNAL);



   if (bval & 0x40) {
    dprintkdbg(DBG_0, "disconnect: SCSI bus stat "
     " 0x%02x: ACK set! Other controllers?\n",
     bval);

   } else
    waiting_process_next(acb);
  } else if (srb->state & SRB_COMPLETED) {
        disc1:



   free_tag(dcb, srb);
   dcb->active_srb = ((void*)0);
   srb->state = SRB_FREE;
   srb_done(acb, dcb, srb);
  }
 }
}
