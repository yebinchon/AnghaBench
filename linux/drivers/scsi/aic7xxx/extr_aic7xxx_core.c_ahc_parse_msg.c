
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahc_tmode_tstate {struct ahc_tmode_lstate** enabled_luns; } ;
struct ahc_tmode_lstate {int dummy; } ;
struct ahc_syncrate {int dummy; } ;
struct ahc_softc {int* msgin_buf; int msgin_index; int msgout_len; int* msgout_buf; scalar_t__ msgout_index; struct ahc_tmode_tstate** enabled_targets; } ;
struct ahc_initiator_tinfo {int scsirate; } ;
struct ahc_devinfo {size_t our_scsiid; size_t lun; int channel; int target; int role; } ;


 int AHCMSG_EXT ;
 int AHC_NEG_ALWAYS ;
 int AHC_TRANS_ACTIVE ;
 int AHC_TRANS_GOAL ;
 int CAM_BDR_SENT ;
 int CAM_REQ_ABORTED ;
 int FALSE ;
 int INITIATOR_TAG ;
 int MSGLOOP_IN_PROG ;
 int MSGLOOP_MSGCOMPLETE ;
 int MSGLOOP_TERMINATED ;
 int MSG_EXT_PPR_DT_REQ ;
 int MSG_EXT_PPR_LEN ;

 int MSG_EXT_SDTR_LEN ;

 int MSG_EXT_WDTR_LEN ;






 int ROLE_INITIATOR ;
 int ROLE_TARGET ;
 int SCB_LIST_NULL ;
 int TRUE ;
 int WIDEXFER ;
 int ahc_abort_scbs (struct ahc_softc*,int ,int ,size_t,int,int ,int ) ;
 int ahc_build_transfer_msg (struct ahc_softc*,struct ahc_devinfo*) ;
 int ahc_construct_ppr (struct ahc_softc*,struct ahc_devinfo*,int,int,int,int) ;
 int ahc_construct_sdtr (struct ahc_softc*,struct ahc_devinfo*,int,int) ;
 int ahc_construct_wdtr (struct ahc_softc*,struct ahc_devinfo*,int) ;
 struct ahc_syncrate* ahc_devlimited_syncrate (struct ahc_softc*,struct ahc_initiator_tinfo*,int*,int*,int ) ;
 struct ahc_initiator_tinfo* ahc_fetch_transinfo (struct ahc_softc*,int ,size_t,int ,struct ahc_tmode_tstate**) ;
 int ahc_handle_devreset (struct ahc_softc*,struct ahc_devinfo*,int ,char*,int ) ;
 int ahc_handle_msg_reject (struct ahc_softc*,struct ahc_devinfo*) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_name (struct ahc_softc*) ;
 int ahc_queue_lstate_event (struct ahc_softc*,struct ahc_tmode_lstate*,size_t,int const,int) ;
 int ahc_restart (struct ahc_softc*) ;
 int ahc_send_lstate_events (struct ahc_softc*,struct ahc_tmode_lstate*) ;
 int ahc_sent_msg (struct ahc_softc*,int ,int const,int) ;
 int ahc_set_syncrate (struct ahc_softc*,struct ahc_devinfo*,struct ahc_syncrate const*,int,int,int,int,int) ;
 int ahc_set_width (struct ahc_softc*,struct ahc_devinfo*,int,int,int) ;
 int ahc_update_neg_request (struct ahc_softc*,struct ahc_devinfo*,struct ahc_tmode_tstate*,struct ahc_initiator_tinfo*,int ) ;
 int ahc_validate_offset (struct ahc_softc*,struct ahc_initiator_tinfo*,struct ahc_syncrate const*,int*,int,int ) ;
 int ahc_validate_width (struct ahc_softc*,struct ahc_initiator_tinfo*,int*,int ) ;
 int bootverbose ;
 int printk (char*,int ,int ,int ,size_t,...) ;

__attribute__((used)) static int
ahc_parse_msg(struct ahc_softc *ahc, struct ahc_devinfo *devinfo)
{
 struct ahc_initiator_tinfo *tinfo;
 struct ahc_tmode_tstate *tstate;
 int reject;
 int done;
 int response;
 u_int targ_scsirate;

 done = MSGLOOP_IN_PROG;
 response = FALSE;
 reject = FALSE;
 tinfo = ahc_fetch_transinfo(ahc, devinfo->channel, devinfo->our_scsiid,
        devinfo->target, &tstate);
 targ_scsirate = tinfo->scsirate;
 switch (ahc->msgin_buf[0]) {
 case 138:
 case 129:
 case 139:
 case 130:
 case 133:




  done = MSGLOOP_TERMINATED;
  break;
 case 132:
  response = ahc_handle_msg_reject(ahc, devinfo);

 case 131:
  done = MSGLOOP_MSGCOMPLETE;
  break;
 case 137:
 {

  if (ahc->msgin_index < 2)
   break;
  switch (ahc->msgin_buf[2]) {
  case 135:
  {
   const struct ahc_syncrate *syncrate;
   u_int period;
   u_int ppr_options;
   u_int offset;
   u_int saved_offset;

   if (ahc->msgin_buf[1] != MSG_EXT_SDTR_LEN) {
    reject = TRUE;
    break;
   }
   if (ahc->msgin_index < (MSG_EXT_SDTR_LEN + 1))
    break;

   period = ahc->msgin_buf[3];
   ppr_options = 0;
   saved_offset = offset = ahc->msgin_buf[4];
   syncrate = ahc_devlimited_syncrate(ahc, tinfo, &period,
          &ppr_options,
          devinfo->role);
   ahc_validate_offset(ahc, tinfo, syncrate, &offset,
         targ_scsirate & WIDEXFER,
         devinfo->role);
   if (bootverbose) {
    printk("(%s:%c:%d:%d): Received "
           "SDTR period %x, offset %x\n\t"
           "Filtered to period %x, offset %x\n",
           ahc_name(ahc), devinfo->channel,
           devinfo->target, devinfo->lun,
           ahc->msgin_buf[3], saved_offset,
           period, offset);
   }
   ahc_set_syncrate(ahc, devinfo,
      syncrate, period,
      offset, ppr_options,
      AHC_TRANS_ACTIVE|AHC_TRANS_GOAL,
                TRUE);






   if (ahc_sent_msg(ahc, AHCMSG_EXT, 135, TRUE)) {

    if (saved_offset != offset) {

     reject = TRUE;
    }
   } else {



    if (bootverbose
     && devinfo->role == ROLE_INITIATOR) {
     printk("(%s:%c:%d:%d): Target "
            "Initiated SDTR\n",
            ahc_name(ahc), devinfo->channel,
            devinfo->target, devinfo->lun);
    }
    ahc->msgout_index = 0;
    ahc->msgout_len = 0;
    ahc_construct_sdtr(ahc, devinfo,
         period, offset);
    ahc->msgout_index = 0;
    response = TRUE;
   }
   done = MSGLOOP_MSGCOMPLETE;
   break;
  }
  case 134:
  {
   u_int bus_width;
   u_int saved_width;
   u_int sending_reply;

   sending_reply = FALSE;
   if (ahc->msgin_buf[1] != MSG_EXT_WDTR_LEN) {
    reject = TRUE;
    break;
   }
   if (ahc->msgin_index < (MSG_EXT_WDTR_LEN + 1))
    break;

   bus_width = ahc->msgin_buf[3];
   saved_width = bus_width;
   ahc_validate_width(ahc, tinfo, &bus_width,
        devinfo->role);
   if (bootverbose) {
    printk("(%s:%c:%d:%d): Received WDTR "
           "%x filtered to %x\n",
           ahc_name(ahc), devinfo->channel,
           devinfo->target, devinfo->lun,
           saved_width, bus_width);
   }

   if (ahc_sent_msg(ahc, AHCMSG_EXT, 134, TRUE)) {






    if (saved_width > bus_width) {
     reject = TRUE;
     printk("(%s:%c:%d:%d): requested %dBit "
            "transfers.  Rejecting...\n",
            ahc_name(ahc), devinfo->channel,
            devinfo->target, devinfo->lun,
            8 * (0x01 << bus_width));
     bus_width = 0;
    }
   } else {



    if (bootverbose
     && devinfo->role == ROLE_INITIATOR) {
     printk("(%s:%c:%d:%d): Target "
            "Initiated WDTR\n",
            ahc_name(ahc), devinfo->channel,
            devinfo->target, devinfo->lun);
    }
    ahc->msgout_index = 0;
    ahc->msgout_len = 0;
    ahc_construct_wdtr(ahc, devinfo, bus_width);
    ahc->msgout_index = 0;
    response = TRUE;
    sending_reply = TRUE;
   }
   ahc_update_neg_request(ahc, devinfo, tstate,
            tinfo, AHC_NEG_ALWAYS);
   ahc_set_width(ahc, devinfo, bus_width,
          AHC_TRANS_ACTIVE|AHC_TRANS_GOAL,
                    TRUE);
   if (sending_reply == FALSE && reject == FALSE) {




    ahc->msgout_index = 0;
    ahc->msgout_len = 0;
    ahc_build_transfer_msg(ahc, devinfo);
    ahc->msgout_index = 0;
    response = TRUE;
   }
   done = MSGLOOP_MSGCOMPLETE;
   break;
  }
  case 136:
  {
   const struct ahc_syncrate *syncrate;
   u_int period;
   u_int offset;
   u_int bus_width;
   u_int ppr_options;
   u_int saved_width;
   u_int saved_offset;
   u_int saved_ppr_options;

   if (ahc->msgin_buf[1] != MSG_EXT_PPR_LEN) {
    reject = TRUE;
    break;
   }
   if (ahc->msgin_index < (MSG_EXT_PPR_LEN + 1))
    break;

   period = ahc->msgin_buf[3];
   offset = ahc->msgin_buf[5];
   bus_width = ahc->msgin_buf[6];
   saved_width = bus_width;
   ppr_options = ahc->msgin_buf[7];





   if ((ppr_options & MSG_EXT_PPR_DT_REQ) == 0
    && period == 9)
    offset = 0;
   saved_ppr_options = ppr_options;
   saved_offset = offset;






   ppr_options &= MSG_EXT_PPR_DT_REQ;
   if (bus_width == 0)
    ppr_options = 0;

   ahc_validate_width(ahc, tinfo, &bus_width,
        devinfo->role);
   syncrate = ahc_devlimited_syncrate(ahc, tinfo, &period,
          &ppr_options,
          devinfo->role);
   ahc_validate_offset(ahc, tinfo, syncrate,
         &offset, bus_width,
         devinfo->role);

   if (ahc_sent_msg(ahc, AHCMSG_EXT, 136, TRUE)) {





    if (saved_width > bus_width
     || saved_offset != offset
     || saved_ppr_options != ppr_options) {
     reject = TRUE;
     period = 0;
     offset = 0;
     bus_width = 0;
     ppr_options = 0;
     syncrate = ((void*)0);
    }
   } else {
    if (devinfo->role != ROLE_TARGET)
     printk("(%s:%c:%d:%d): Target "
            "Initiated PPR\n",
            ahc_name(ahc), devinfo->channel,
            devinfo->target, devinfo->lun);
    else
     printk("(%s:%c:%d:%d): Initiator "
            "Initiated PPR\n",
            ahc_name(ahc), devinfo->channel,
            devinfo->target, devinfo->lun);
    ahc->msgout_index = 0;
    ahc->msgout_len = 0;
    ahc_construct_ppr(ahc, devinfo, period, offset,
        bus_width, ppr_options);
    ahc->msgout_index = 0;
    response = TRUE;
   }
   if (bootverbose) {
    printk("(%s:%c:%d:%d): Received PPR width %x, "
           "period %x, offset %x,options %x\n"
           "\tFiltered to width %x, period %x, "
           "offset %x, options %x\n",
           ahc_name(ahc), devinfo->channel,
           devinfo->target, devinfo->lun,
           saved_width, ahc->msgin_buf[3],
           saved_offset, saved_ppr_options,
           bus_width, period, offset, ppr_options);
   }
   ahc_set_width(ahc, devinfo, bus_width,
          AHC_TRANS_ACTIVE|AHC_TRANS_GOAL,
                    TRUE);
   ahc_set_syncrate(ahc, devinfo,
      syncrate, period,
      offset, ppr_options,
      AHC_TRANS_ACTIVE|AHC_TRANS_GOAL,
                TRUE);
   done = MSGLOOP_MSGCOMPLETE;
   break;
  }
  default:

   reject = TRUE;
   break;
  }
  break;
 }
 case 128:
 default:
  reject = TRUE;
  break;
 }

 if (reject) {



  ahc->msgout_index = 0;
  ahc->msgout_len = 1;
  ahc->msgout_buf[0] = 132;
  done = MSGLOOP_MSGCOMPLETE;
  response = TRUE;
 }

 if (done != MSGLOOP_IN_PROG && !response)

  ahc->msgout_len = 0;

 return (done);
}
