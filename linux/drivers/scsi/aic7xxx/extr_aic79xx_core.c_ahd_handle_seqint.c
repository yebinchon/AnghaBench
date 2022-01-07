
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct scb {int flags; TYPE_1__* hscb; int sg_count; int sense_busaddr; } ;
struct ahd_transinfo {int dummy; } ;
struct ahd_tmode_tstate {int dummy; } ;
struct ahd_softc {int bugs; int msgout_len; void* msg_type; int msgout_index; int * msgout_buf; int msgin_index; } ;
struct ahd_initiator_tinfo {struct ahd_transinfo curr; } ;
struct ahd_devinfo {int lun; int target; int channel; int role; int our_scsiid; } ;
typedef int cam_status ;
struct TYPE_4__ {int phasemsg; } ;
struct TYPE_3__ {int scsiid; int lun; int control; int task_management; } ;


 int ACCUM ;
 int AC_SENT_BDR ;
 int AHD_ASSERT_MODES (struct ahd_softc*,int,int) ;
 int AHD_CLRLQO_AUTOCLR_BUG ;
 int AHD_INTCOLLISION_BUG ;
 int AHD_MODE_CFG_MSK ;
 int AHD_MODE_SCSI ;
 int AHD_MODE_SCSI_MSK ;
 int AHD_MODE_UNKNOWN_MSK ;
 int AHD_SENSE_BUFSIZE ;
 int AHD_SHOW_MISC ;
 int AHD_SHOW_RECOVERY ;
 int AHD_TRANS_ACTIVE ;
 int ATNO ;

 int BUILD_TCL (int,int) ;
 int CAM_BDR_SENT ;
 int CAM_DATA_RUN_ERR ;
 int CAM_LUN_WILDCARD ;
 int CAM_REQUEUE_REQ ;
 int CAM_REQ_ABORTED ;


 int CLRINT ;
 int CLRLQOINT1 ;
 int CLRLQOPHACHGINPKT ;
 int CLRSEQINT ;

 int DFCNTRL ;
 int DPHASE ;

 int ENSELO ;

 int HADDR ;
 int HCNT ;
 int HDMAEN ;
 int HOST_MSG ;




 int LASTPHASE ;
 int LQIPHASE_OUTPKT ;
 int LQISTAT2 ;


 int MK_MESSAGE ;
 int MODE_PTR ;
 int MSG_ABORT_TASK ;
 int MSG_BUS_DEV_RESET ;
 int MSG_EXT_WDTR_BUS_8_BIT ;
 int MSG_OUT ;
 void* MSG_TYPE_INITIATOR_MSGIN ;
 void* MSG_TYPE_INITIATOR_MSGOUT ;
 void* MSG_TYPE_NONE ;
 void* MSG_TYPE_TARGET_MSGOUT ;



 int PHASE_MASK ;
 int PRELOADEN ;
 int REG0 ;
 int ROLE_INITIATOR ;
 int SAVED_LUN ;
 int SAVED_SCSIID ;

 int SCB_ABORT ;
 int SCB_CDB_LEN ;
 int SCB_CDB_STORE ;
 int SCB_CONTROL ;
 int SCB_EXTERNAL_RESET ;
 int SCB_GET_CHANNEL (struct ahd_softc*,struct scb*) ;
 int SCB_GET_LUN (struct scb*) ;
 int SCB_GET_OUR_ID (struct scb*) ;
 int SCB_GET_TAG (struct scb*) ;
 int SCB_GET_TARGET (struct ahd_softc*,struct scb*) ;
 int SCB_LIST_NULL ;
 int SCB_LUN ;
 int SCB_PACKETIZED ;
 int SCB_RECOVERY_SCB ;
 int SCB_SCSIID ;
 int SCB_TAG_TYPE ;
 int SCB_TASK_MANAGEMENT ;
 int SCSIBUS ;
 int SCSIEN ;
 int SCSIID_TARGET (struct ahd_softc*,int) ;
 int SCSISEQ0 ;
 int SCSISIGI ;
 int SCSISIGO ;
 int SEARCH_REMOVE ;
 int SELDO ;
 int SELID ;
 int SELTO ;
 int SEQCTL0 ;
 int SEQINTCODE ;
 int SEQ_FLAGS ;
 int SG_CACHE_PRE ;
 int SG_CACHE_SHADOW ;
 int SG_LAST_SEG ;
 int SINDEX ;





 int SSTAT0 ;
 int SSTAT1 ;

 int STATUS_RCVD ;
 int SXFRCTL0 ;
 int TAG_ENB ;






 int TRUE ;
 int ahd_abort_scbs (struct ahd_softc*,int ,char,int,int,int ,int ) ;
 int ahd_assert_atn (struct ahd_softc*) ;
 int ahd_clear_intstat (struct ahd_softc*) ;
 int ahd_compile_devinfo (struct ahd_devinfo*,int ,int ,int ,int ,int ) ;
 int ahd_debug ;
 int ahd_dump_card_state (struct ahd_softc*) ;
 int ahd_dump_sglist (struct scb*) ;
 int ahd_fetch_devinfo (struct ahd_softc*,struct ahd_devinfo*) ;
 struct ahd_initiator_tinfo* ahd_fetch_transinfo (struct ahd_softc*,int ,int ,int ,struct ahd_tmode_tstate**) ;
 int ahd_find_busy_tcl (struct ahd_softc*,int ) ;
 int ahd_freeze_devq (struct ahd_softc*,struct scb*) ;
 int ahd_freeze_scb (struct scb*) ;
 int ahd_get_scbptr (struct ahd_softc*) ;
 int ahd_get_transfer_length (struct scb*) ;
 int ahd_handle_devreset (struct ahd_softc*,struct ahd_devinfo*,int,int ,char*,int ) ;
 int ahd_handle_hwerrint (struct ahd_softc*) ;
 int ahd_handle_ign_wide_residue (struct ahd_softc*,struct ahd_devinfo*) ;
 int ahd_handle_message_phase (struct ahd_softc*) ;
 int ahd_handle_proto_violation (struct ahd_softc*) ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_inb_scbram (struct ahd_softc*,int ) ;
 int ahd_inw (struct ahd_softc*,int ) ;
 int ahd_is_paused (struct ahd_softc*) ;
 TYPE_2__* ahd_lookup_phase_entry (int) ;
 struct scb* ahd_lookup_scb (struct ahd_softc*,int) ;
 int ahd_name (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_outq (struct ahd_softc*,int ,int ) ;
 int ahd_outw (struct ahd_softc*,int ,int ) ;
 int ahd_print_path (struct ahd_softc*,struct scb*) ;
 int ahd_reinitialize_dataptrs (struct ahd_softc*) ;
 int ahd_reset_channel (struct ahd_softc*,char,int ) ;
 int ahd_restart (struct ahd_softc*) ;
 int ahd_scb_devinfo (struct ahd_softc*,struct ahd_devinfo*,struct scb*) ;
 int ahd_search_qinfifo (struct ahd_softc*,int ,int ,int ,int,int ,int ,int ) ;
 int ahd_send_async (struct ahd_softc*,int ,int ,int,int ) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;
 int ahd_set_syncrate (struct ahd_softc*,struct ahd_devinfo*,int ,int ,int ,int ,int ) ;
 int ahd_set_transaction_status (struct scb*,int ) ;
 int ahd_set_width (struct ahd_softc*,struct ahd_devinfo*,int ,int ,int ) ;
 int ahd_setup_initiator_msgout (struct ahd_softc*,struct ahd_devinfo*,struct scb*) ;
 int ahd_setup_target_msgin (struct ahd_softc*,struct ahd_devinfo*,struct scb*) ;
 int ahd_unpause (struct ahd_softc*) ;
 int ahd_update_modes (struct ahd_softc*) ;
 int panic (char*) ;
 int printk (char*,...) ;

__attribute__((used)) static void
ahd_handle_seqint(struct ahd_softc *ahd, u_int intstat)
{
 u_int seqintcode;






 seqintcode = ahd_inb(ahd, SEQINTCODE);
 ahd_outb(ahd, CLRINT, CLRSEQINT);
 if ((ahd->bugs & AHD_INTCOLLISION_BUG) != 0) {






  ahd_unpause(ahd);
  while (!ahd_is_paused(ahd))
   ;
  ahd_outb(ahd, CLRINT, CLRSEQINT);
 }
 ahd_update_modes(ahd);





 switch (seqintcode) {
 case 159:
 {
  struct scb *scb;
  u_int scbid;

  AHD_ASSERT_MODES(ahd, ~(AHD_MODE_UNKNOWN_MSK|AHD_MODE_CFG_MSK),
     ~(AHD_MODE_UNKNOWN_MSK|AHD_MODE_CFG_MSK));
  scbid = ahd_get_scbptr(ahd);
  scb = ahd_lookup_scb(ahd, scbid);
  if (scb == ((void*)0)) {






  } else {
   ahd_outb(ahd, SAVED_SCSIID, scb->hscb->scsiid);
   ahd_outb(ahd, SAVED_LUN, scb->hscb->lun);
   ahd_outb(ahd, SEQ_FLAGS, 0x0);
  }
  if ((ahd_inb(ahd, LQISTAT2) & LQIPHASE_OUTPKT) != 0
   && (ahd_inb(ahd, SCSISIGO) & ATNO) != 0) {
  }




  break;
 }
 case 155:
  printk("%s: Invalid Sequencer interrupt occurred, "
         "resetting channel.\n",
         ahd_name(ahd));




  ahd_reset_channel(ahd, 'A', TRUE);
  break;
 case 134:
 {
  struct scb *scb;
  u_int scbid;

  scbid = ahd_get_scbptr(ahd);
  scb = ahd_lookup_scb(ahd, scbid);
  if (scb != ((void*)0))
   ahd_print_path(ahd, scb);
  else
   printk("%s: ", ahd_name(ahd));
  printk("SCB %d Packetized Status Overrun", scbid);
  ahd_dump_card_state(ahd);
  ahd_reset_channel(ahd, 'A', TRUE);
  break;
 }
 case 163:
 {
  struct scb *scb;
  u_int scbid;

  scbid = ahd_get_scbptr(ahd);
  scb = ahd_lookup_scb(ahd, scbid);
  if (scb == ((void*)0)) {
   ahd_dump_card_state(ahd);
   printk("CFG4ISTAT: Free SCB %d referenced", scbid);
   panic("For safety");
  }
  ahd_outq(ahd, HADDR, scb->sense_busaddr);
  ahd_outw(ahd, HCNT, AHD_SENSE_BUFSIZE);
  ahd_outb(ahd, HCNT + 2, 0);
  ahd_outb(ahd, SG_CACHE_PRE, SG_LAST_SEG);
  ahd_outb(ahd, DFCNTRL, PRELOADEN|SCSIEN|HDMAEN);
  break;
 }
 case 156:
 {
  u_int bus_phase;

  bus_phase = ahd_inb(ahd, SCSISIGI) & PHASE_MASK;
  printk("%s: ILLEGAL_PHASE 0x%x\n",
         ahd_name(ahd), bus_phase);

  switch (bus_phase) {
  case 145:
  case 147:
  case 144:
  case 146:
  case 142:
  case 141:
  case 143:
   ahd_reset_channel(ahd, 'A', TRUE);
   printk("%s: Issued Bus Reset.\n", ahd_name(ahd));
   break;
  case 148:
  {
   struct ahd_devinfo devinfo;
   struct scb *scb;
   struct ahd_initiator_tinfo *targ_info;
   struct ahd_tmode_tstate *tstate;
   struct ahd_transinfo *tinfo;
   u_int scbid;
   scbid = ahd_get_scbptr(ahd);
   scb = ahd_lookup_scb(ahd, scbid);
   if (scb == ((void*)0)) {
    printk("Invalid phase with no valid SCB.  "
           "Resetting bus.\n");
    ahd_reset_channel(ahd, 'A',
                          TRUE);
    break;
   }
   ahd_compile_devinfo(&devinfo, SCB_GET_OUR_ID(scb),
         SCB_GET_TARGET(ahd, scb),
         SCB_GET_LUN(scb),
         SCB_GET_CHANNEL(ahd, scb),
         ROLE_INITIATOR);
   targ_info = ahd_fetch_transinfo(ahd,
       devinfo.channel,
       devinfo.our_scsiid,
       devinfo.target,
       &tstate);
   tinfo = &targ_info->curr;
   ahd_set_width(ahd, &devinfo, MSG_EXT_WDTR_BUS_8_BIT,
          AHD_TRANS_ACTIVE, TRUE);
   ahd_set_syncrate(ahd, &devinfo, 0,
                0, 0,
      AHD_TRANS_ACTIVE, TRUE);

   ahd_outb(ahd, SCB_CDB_STORE, 0);
   ahd_outb(ahd, SCB_CDB_STORE+1, 0);
   ahd_outb(ahd, SCB_CDB_STORE+2, 0);
   ahd_outb(ahd, SCB_CDB_STORE+3, 0);
   ahd_outb(ahd, SCB_CDB_STORE+4, 0);
   ahd_outb(ahd, SCB_CDB_STORE+5, 0);
   ahd_outb(ahd, SCB_CDB_LEN, 6);
   scb->hscb->control &= ~(TAG_ENB|SCB_TAG_TYPE);
   scb->hscb->control |= MK_MESSAGE;
   ahd_outb(ahd, SCB_CONTROL, scb->hscb->control);
   ahd_outb(ahd, MSG_OUT, HOST_MSG);
   ahd_outb(ahd, SAVED_SCSIID, scb->hscb->scsiid);




   ahd_outb(ahd, SAVED_LUN, 0);
   ahd_outb(ahd, SEQ_FLAGS, 0);
   ahd_assert_atn(ahd);
   scb->flags &= ~SCB_PACKETIZED;
   scb->flags |= SCB_ABORT|SCB_EXTERNAL_RESET;
   ahd_freeze_devq(ahd, scb);
   ahd_set_transaction_status(scb, CAM_REQUEUE_REQ);
   ahd_freeze_scb(scb);


   ahd_send_async(ahd, devinfo.channel, devinfo.target,
           CAM_LUN_WILDCARD, AC_SENT_BDR);





   ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
   ahd_outb(ahd, CLRLQOINT1, CLRLQOPHACHGINPKT);
   if ((ahd->bugs & AHD_CLRLQO_AUTOCLR_BUG) != 0) {
    ahd_outb(ahd, CLRLQOINT1, 0);
   }







   break;
  }
  }
  break;
 }
 case 162:
 {
  struct scb *scb;
  u_int scb_index;







  scb_index = ahd_get_scbptr(ahd);
  scb = ahd_lookup_scb(ahd, scb_index);
  if (scb == ((void*)0)) {




   ahd_assert_atn(ahd);
   ahd_outb(ahd, MSG_OUT, HOST_MSG);
   ahd->msgout_buf[0] = MSG_ABORT_TASK;
   ahd->msgout_len = 1;
   ahd->msgout_index = 0;
   ahd->msg_type = MSG_TYPE_INITIATOR_MSGOUT;




   ahd_outb(ahd, SCB_CONTROL,
     ahd_inb_scbram(ahd, SCB_CONTROL)
     & ~STATUS_RCVD);
  }
  break;
 }
 case 160:
 {
  ahd_dump_card_state(ahd);
  break;
 }
 case 150:
 {
  ahd_reinitialize_dataptrs(ahd);
  break;
 }
 case 158:
 {
  struct ahd_devinfo devinfo;
  ahd_fetch_devinfo(ahd, &devinfo);
  if (ahd->msg_type == MSG_TYPE_NONE) {
   struct scb *scb;
   u_int scb_index;
   u_int bus_phase;

   bus_phase = ahd_inb(ahd, SCSISIGI) & PHASE_MASK;
   if (bus_phase != 143
    && bus_phase != 142) {
    printk("ahd_intr: HOST_MSG_LOOP bad "
           "phase 0x%x\n", bus_phase);




    ahd_dump_card_state(ahd);
    ahd_clear_intstat(ahd);
    ahd_restart(ahd);
    return;
   }

   scb_index = ahd_get_scbptr(ahd);
   scb = ahd_lookup_scb(ahd, scb_index);
   if (devinfo.role == ROLE_INITIATOR) {
    if (bus_phase == 142)
     ahd_setup_initiator_msgout(ahd,
           &devinfo,
           scb);
    else {
     ahd->msg_type =
         MSG_TYPE_INITIATOR_MSGIN;
     ahd->msgin_index = 0;
    }
   }
  }

  ahd_handle_message_phase(ahd);
  break;
 }
 case 152:
 {

  AHD_ASSERT_MODES(ahd, AHD_MODE_SCSI_MSK, AHD_MODE_SCSI_MSK);
  ahd_outb(ahd, SCSISEQ0, ahd_inb(ahd, SCSISEQ0) & ~ENSELO);

  printk("%s:%c:%d: no active SCB for reconnecting "
         "target - issuing BUS DEVICE RESET\n",
         ahd_name(ahd), 'A', ahd_inb(ahd, SELID) >> 4);
  printk("SAVED_SCSIID == 0x%x, SAVED_LUN == 0x%x, "
         "REG0 == 0x%x ACCUM = 0x%x\n",
         ahd_inb(ahd, SAVED_SCSIID), ahd_inb(ahd, SAVED_LUN),
         ahd_inw(ahd, REG0), ahd_inb(ahd, ACCUM));
  printk("SEQ_FLAGS == 0x%x, SCBPTR == 0x%x, BTT == 0x%x, "
         "SINDEX == 0x%x\n",
         ahd_inb(ahd, SEQ_FLAGS), ahd_get_scbptr(ahd),
         ahd_find_busy_tcl(ahd,
      BUILD_TCL(ahd_inb(ahd, SAVED_SCSIID),
         ahd_inb(ahd, SAVED_LUN))),
         ahd_inw(ahd, SINDEX));
  printk("SELID == 0x%x, SCB_SCSIID == 0x%x, SCB_LUN == 0x%x, "
         "SCB_CONTROL == 0x%x\n",
         ahd_inb(ahd, SELID), ahd_inb_scbram(ahd, SCB_SCSIID),
         ahd_inb_scbram(ahd, SCB_LUN),
         ahd_inb_scbram(ahd, SCB_CONTROL));
  printk("SCSIBUS[0] == 0x%x, SCSISIGI == 0x%x\n",
         ahd_inb(ahd, SCSIBUS), ahd_inb(ahd, SCSISIGI));
  printk("SXFRCTL0 == 0x%x\n", ahd_inb(ahd, SXFRCTL0));
  printk("SEQCTL0 == 0x%x\n", ahd_inb(ahd, SEQCTL0));
  ahd_dump_card_state(ahd);
  ahd->msgout_buf[0] = MSG_BUS_DEV_RESET;
  ahd->msgout_len = 1;
  ahd->msgout_index = 0;
  ahd->msg_type = MSG_TYPE_INITIATOR_MSGOUT;
  ahd_outb(ahd, MSG_OUT, HOST_MSG);
  ahd_assert_atn(ahd);
  break;
 }
 case 149:
 {
  ahd_handle_proto_violation(ahd);
  break;
 }
 case 157:
 {
  struct ahd_devinfo devinfo;

  ahd_fetch_devinfo(ahd, &devinfo);
  ahd_handle_ign_wide_residue(ahd, &devinfo);
  break;
 }
 case 164:
 {
  u_int lastphase;

  lastphase = ahd_inb(ahd, LASTPHASE);
  printk("%s:%c:%d: unknown scsi bus phase %x, "
         "lastphase = 0x%x.  Attempting to continue\n",
         ahd_name(ahd), 'A',
         SCSIID_TARGET(ahd, ahd_inb(ahd, SAVED_SCSIID)),
         lastphase, ahd_inb(ahd, SCSISIGI));
  break;
 }
 case 154:
 {
  u_int lastphase;

  lastphase = ahd_inb(ahd, LASTPHASE);
  printk("%s:%c:%d: Missed busfree. "
         "Lastphase = 0x%x, Curphase = 0x%x\n",
         ahd_name(ahd), 'A',
         SCSIID_TARGET(ahd, ahd_inb(ahd, SAVED_SCSIID)),
         lastphase, ahd_inb(ahd, SCSISIGI));
  ahd_restart(ahd);
  return;
 }
 case 161:
 {
  struct scb *scb;
  u_int scbindex;




  scbindex = ahd_get_scbptr(ahd);
  scb = ahd_lookup_scb(ahd, scbindex);
  ahd_freeze_devq(ahd, scb);
  ahd_set_transaction_status(scb, CAM_DATA_RUN_ERR);
  ahd_freeze_scb(scb);
  break;
 }
 case 153:
 {
  struct ahd_devinfo devinfo;
  struct scb *scb;
  u_int scbid;

  ahd_fetch_devinfo(ahd, &devinfo);
  printk("%s:%c:%d:%d: Attempt to issue message failed\n",
         ahd_name(ahd), devinfo.channel, devinfo.target,
         devinfo.lun);
  scbid = ahd_get_scbptr(ahd);
  scb = ahd_lookup_scb(ahd, scbid);
  if (scb != ((void*)0)
   && (scb->flags & SCB_RECOVERY_SCB) != 0)




   ahd_search_qinfifo(ahd, SCB_GET_TARGET(ahd, scb),
        SCB_GET_CHANNEL(ahd, scb),
        SCB_GET_LUN(scb), SCB_GET_TAG(scb),
        ROLE_INITIATOR, 0,
        SEARCH_REMOVE);
  ahd_outb(ahd, SCB_CONTROL,
    ahd_inb_scbram(ahd, SCB_CONTROL) & ~MK_MESSAGE);
  break;
 }
 case 132:
 {
  u_int scbid;
  struct scb *scb;

  scbid = ahd_get_scbptr(ahd);
  scb = ahd_lookup_scb(ahd, scbid);
  if (scb != ((void*)0)) {
   u_int lun;
   u_int tag;
   cam_status error;

   ahd_print_path(ahd, scb);
   printk("Task Management Func 0x%x Complete\n",
          scb->hscb->task_management);
   lun = CAM_LUN_WILDCARD;
   tag = SCB_LIST_NULL;

   switch (scb->hscb->task_management) {
   case 139:
    tag = SCB_GET_TAG(scb);

   case 138:
   case 137:
    lun = scb->hscb->lun;
    error = CAM_REQ_ABORTED;
    ahd_abort_scbs(ahd, SCB_GET_TARGET(ahd, scb),
            'A', lun, tag, ROLE_INITIATOR,
            error);
    break;
   case 136:
    lun = scb->hscb->lun;

   case 135:
   {
    struct ahd_devinfo devinfo;

    ahd_scb_devinfo(ahd, &devinfo, scb);
    error = CAM_BDR_SENT;
    ahd_handle_devreset(ahd, &devinfo, lun,
          CAM_BDR_SENT,
          lun != CAM_LUN_WILDCARD
          ? "Lun Reset"
          : "Target Reset",
                           0);
    break;
   }
   default:
    panic("Unexpected TaskMgmt Func\n");
    break;
   }
  }
  break;
 }
 case 133:
 {
  u_int scbid;
  struct scb *scb;





  scbid = ahd_get_scbptr(ahd);
  scb = ahd_lookup_scb(ahd, scbid);
  if (scb != ((void*)0)) {




   ahd_print_path(ahd, scb);
   printk("SCB completes before TMF\n");







   while ((ahd_inb(ahd, SCSISEQ0) & ENSELO) != 0
       && (ahd_inb(ahd, SSTAT0) & SELDO) == 0
       && (ahd_inb(ahd, SSTAT1) & SELTO) == 0)
    ;
   ahd_outb(ahd, SCB_TASK_MANAGEMENT, 0);
   ahd_search_qinfifo(ahd, SCB_GET_TARGET(ahd, scb),
        SCB_GET_CHANNEL(ahd, scb),
        SCB_GET_LUN(scb), SCB_GET_TAG(scb),
        ROLE_INITIATOR, 0,
        SEARCH_REMOVE);
  }
  break;
 }
 case 131:
 case 130:
 case 129:
 case 128:
  printk("%s: Tracepoint %d\n", ahd_name(ahd),
         seqintcode - 131);
  break;
 case 151:
  break;
 case 140:
  ahd_handle_hwerrint(ahd);
  break;
 default:
  printk("%s: Unexpected SEQINTCODE %d\n", ahd_name(ahd),
         seqintcode);
  break;
 }





 ahd_unpause(ahd);
}
