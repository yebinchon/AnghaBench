
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
struct scsi_sense {int byte2; int length; int control; int * unused; int opcode; } ;
struct scb {int flags; int sg_list_phys; int sg_count; struct hardware_scb* hscb; struct ahc_dma_seg* sg_list; } ;
struct TYPE_6__ {int scsi_status; } ;
struct TYPE_7__ {int cdb; TYPE_1__ status; } ;
struct hardware_scb {int tag; int cdb_len; int dataptr; int datacnt; int sgptr; int control; TYPE_2__ shared_data; } ;
struct ahc_transinfo {int protocol_version; } ;
struct ahc_tmode_tstate {int auto_negotiate; } ;
struct ahc_softc {int msgout_len; int features; int flags; TYPE_4__* scb_data; int msgin_index; int msg_type; int msgout_index; int * msgout_buf; } ;
struct ahc_initiator_tinfo {struct ahc_transinfo curr; } ;
struct ahc_dma_seg {int addr; int len; } ;
struct ahc_devinfo {int target_mask; int lun; int target; int channel; int role; int our_scsiid; } ;
struct TYPE_10__ {int phase; int phasemsg; } ;
struct TYPE_9__ {TYPE_3__* hscbs; } ;
struct TYPE_8__ {int tag; } ;


 int ACCUM ;
 int AHC_39BIT_ADDRESSING ;
 int AHC_DMA_LAST_SEG ;
 int AHC_DT ;
 int AHC_NEG_IF_NON_ASYNC ;
 int AHC_SG_LEN_MASK ;
 int AHC_SHOW_SENSE ;
 int AHC_ULTRA2 ;
 int ARG_1 ;


 int BITBUCKET ;
 int BUILD_TCL (int,int) ;
 int CAM_AUTOSENSE_FAIL ;
 int CAM_DATA_RUN_ERR ;
 int CAM_SCSI_STATUS_ERROR ;
 int CAM_UNCOR_PARITY ;
 int CDI ;
 int CLRCHN ;
 int CLRINT ;
 int CLRSEQINT ;
 int CLRSTCNT ;

 int DPHASE ;
 int DSCOMMAND1 ;
 int ENAUTOATNP ;
 int ENRSELI ;
 int ENSELI ;
 int HADDLDSEL0 ;
 int HADDR ;
 int HOST_MSG ;


 int LASTPHASE ;


 int MK_MESSAGE ;
 int MSGI ;
 int MSG_BUS_DEV_RESET ;
 int MSG_OUT ;
 int MSG_TYPE_INITIATOR_MSGIN ;
 int MSG_TYPE_INITIATOR_MSGOUT ;
 int MSG_TYPE_NONE ;
 int MSG_TYPE_TARGET_MSGOUT ;





 int PHASE_MASK ;

 int P_MESGIN ;
 int P_MESGOUT ;
 int REQUEST_SENSE ;
 int RETURN_1 ;
 int ROLE_INITIATOR ;
 int SAVED_LUN ;
 int SAVED_SCSIID ;
 int SCBPTR ;
 int SCB_AUTO_NEGOTIATE ;
 int SCB_CONTROL ;
 int SCB_GET_CHANNEL (struct ahc_softc*,struct scb*) ;
 int SCB_GET_LUN (struct scb*) ;
 int SCB_GET_TARGET (struct ahc_softc*,struct scb*) ;
 int SCB_LUN ;

 int SCB_NEGOTIATE ;
 int SCB_RECOVERY_SCB ;
 int SCB_SCSIID ;
 int SCB_SENSE ;
 int SCB_TAG ;
 int SCSIBUSL ;
 int SCSIDATL ;
 int SCSIID ;
 int SCSIINT ;
 int SCSIPERR ;
 int SCSISEQ ;
 int SCSISIGI ;
 int SCSISIGO ;
 int SCSI_REV_2 ;



 int SEARCH_REMOVE ;

 int SEND_SENSE ;
 int SEQCTL ;
 int SEQINT_MASK ;
 int SEQ_FLAGS ;
 int SG_FULL_RESID ;
 int SG_HIGH_ADDR_BITS ;
 int SINDEX ;
 int SSTAT1 ;
 int SXFRCTL0 ;
 int SXFRCTL1 ;
 int TRUE ;
 int ahc_assert_atn (struct ahc_softc*) ;
 int ahc_clear_intstat (struct ahc_softc*) ;
 int ahc_debug ;
 int ahc_delay (int) ;
 int ahc_dump_card_state (struct ahc_softc*) ;
 int ahc_fetch_devinfo (struct ahc_softc*,struct ahc_devinfo*) ;
 struct ahc_initiator_tinfo* ahc_fetch_transinfo (struct ahc_softc*,int ,int ,int ,struct ahc_tmode_tstate**) ;
 int ahc_freeze_devq (struct ahc_softc*,struct scb*) ;
 int ahc_freeze_scb (struct scb*) ;
 int ahc_get_residual (struct scb*) ;
 int ahc_get_sense_bufaddr (struct ahc_softc*,struct scb*) ;
 int ahc_get_sense_bufsize (struct ahc_softc*,struct scb*) ;
 int ahc_get_transfer_length (struct scb*) ;
 int ahc_handle_ign_wide_residue (struct ahc_softc*,struct ahc_devinfo*) ;
 int ahc_handle_message_phase (struct ahc_softc*) ;
 int ahc_handle_proto_violation (struct ahc_softc*) ;
 void* ahc_htole32 (int) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_index_busy_tcl (struct ahc_softc*,int ) ;
 int ahc_le32toh (int) ;
 struct scb* ahc_lookup_scb (struct ahc_softc*,int) ;
 int ahc_name (struct ahc_softc*) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;
 int ahc_perform_autosense (struct scb*) ;
 TYPE_5__* ahc_phase_table ;
 int ahc_print_devinfo (struct ahc_softc*,struct ahc_devinfo*) ;
 int ahc_print_path (struct ahc_softc*,struct scb*) ;
 int ahc_qinfifo_requeue_tail (struct ahc_softc*,struct scb*) ;
 int ahc_reinitialize_dataptrs (struct ahc_softc*) ;
 int ahc_reset_channel (struct ahc_softc*,int ,int ) ;
 int ahc_restart (struct ahc_softc*) ;
 int ahc_scb_timer_reset (struct scb*,int) ;
 int ahc_search_qinfifo (struct ahc_softc*,int ,int ,int,int,int ,int ,int ) ;
 int ahc_set_scsi_status (struct scb*,int ) ;
 int ahc_set_transaction_status (struct scb*,int ) ;
 int ahc_setup_initiator_msgout (struct ahc_softc*,struct ahc_devinfo*,struct scb*) ;
 int ahc_setup_target_msgin (struct ahc_softc*,struct ahc_devinfo*,struct scb*) ;
 int ahc_unpause (struct ahc_softc*) ;
 int ahc_update_neg_request (struct ahc_softc*,struct ahc_devinfo*,struct ahc_tmode_tstate*,struct ahc_initiator_tinfo*,int ) ;
 int ahc_update_residual (struct ahc_softc*,struct scb*) ;
 int num_phases ;
 int panic (char*,...) ;
 int printk (char*,...) ;

__attribute__((used)) static void
ahc_handle_seqint(struct ahc_softc *ahc, u_int intstat)
{
 struct scb *scb;
 struct ahc_devinfo devinfo;

 ahc_fetch_devinfo(ahc, &devinfo);







 ahc_outb(ahc, CLRINT, CLRSEQINT);
 switch (intstat & SEQINT_MASK) {
 case 144:
 {
  u_int scb_index;
  struct hardware_scb *hscb;






  ahc_outb(ahc, RETURN_1, 0);
  scb_index = ahc_inb(ahc, SCB_TAG);
  scb = ahc_lookup_scb(ahc, scb_index);
  if (scb == ((void*)0)) {
   ahc_print_devinfo(ahc, &devinfo);
   printk("ahc_intr - referenced scb "
          "not valid during seqint 0x%x scb(%d)\n",
          intstat, scb_index);
   ahc_dump_card_state(ahc);
   panic("for safety");
   goto unpause;
  }

  hscb = scb->hscb;


  if ((scb->flags & SCB_SENSE) != 0) {





   scb->flags &= ~SCB_SENSE;
   ahc_set_transaction_status(scb, CAM_AUTOSENSE_FAIL);
   break;
  }
  ahc_set_transaction_status(scb, CAM_SCSI_STATUS_ERROR);

  ahc_freeze_devq(ahc, scb);
  ahc_freeze_scb(scb);
  ahc_set_scsi_status(scb, hscb->shared_data.status.scsi_status);
  switch (hscb->shared_data.status.scsi_status) {
  case 129:
   printk("%s: Interrupted for status of 0???\n",
          ahc_name(ahc));
   break;
  case 130:
  case 131:
  {
   struct ahc_dma_seg *sg;
   struct scsi_sense *sc;
   struct ahc_initiator_tinfo *targ_info;
   struct ahc_tmode_tstate *tstate;
   struct ahc_transinfo *tinfo;
   if (ahc_perform_autosense(scb) == 0)
    break;

   targ_info = ahc_fetch_transinfo(ahc,
       devinfo.channel,
       devinfo.our_scsiid,
       devinfo.target,
       &tstate);
   tinfo = &targ_info->curr;
   sg = scb->sg_list;
   sc = (struct scsi_sense *)(&hscb->shared_data.cdb);



   ahc_update_residual(ahc, scb);






   sg->addr = ahc_get_sense_bufaddr(ahc, scb);
   sg->len = ahc_get_sense_bufsize(ahc, scb);
   sg->len |= AHC_DMA_LAST_SEG;


   sg->addr = ahc_htole32(sg->addr);
   sg->len = ahc_htole32(sg->len);

   sc->opcode = REQUEST_SENSE;
   sc->byte2 = 0;
   if (tinfo->protocol_version <= SCSI_REV_2
    && SCB_GET_LUN(scb) < 8)
    sc->byte2 = SCB_GET_LUN(scb) << 5;
   sc->unused[0] = 0;
   sc->unused[1] = 0;
   sc->length = sg->len;
   sc->control = 0;
   hscb->control = 0;
   if (ahc_get_residual(scb)
    == ahc_get_transfer_length(scb)) {
    ahc_update_neg_request(ahc, &devinfo,
             tstate, targ_info,
             AHC_NEG_IF_NON_ASYNC);
   }
   if (tstate->auto_negotiate & devinfo.target_mask) {
    hscb->control |= MK_MESSAGE;
    scb->flags &= ~SCB_NEGOTIATE;
    scb->flags |= SCB_AUTO_NEGOTIATE;
   }
   hscb->cdb_len = sizeof(*sc);
   hscb->dataptr = sg->addr;
   hscb->datacnt = sg->len;
   hscb->sgptr = scb->sg_list_phys | SG_FULL_RESID;
   hscb->sgptr = ahc_htole32(hscb->sgptr);
   scb->sg_count = 1;
   scb->flags |= SCB_SENSE;
   ahc_qinfifo_requeue_tail(ahc, scb);
   ahc_outb(ahc, RETURN_1, SEND_SENSE);




   ahc_scb_timer_reset(scb, 5 * 1000000);
   break;
  }
  default:
   break;
  }
  break;
 }
 case 137:
 {

  ahc_outb(ahc, SCSISEQ,
    ahc_inb(ahc, SCSISEQ) & (ENSELI|ENRSELI|ENAUTOATNP));

  printk("%s:%c:%d: no active SCB for reconnecting "
         "target - issuing BUS DEVICE RESET\n",
         ahc_name(ahc), devinfo.channel, devinfo.target);
  printk("SAVED_SCSIID == 0x%x, SAVED_LUN == 0x%x, "
         "ARG_1 == 0x%x ACCUM = 0x%x\n",
         ahc_inb(ahc, SAVED_SCSIID), ahc_inb(ahc, SAVED_LUN),
         ahc_inb(ahc, ARG_1), ahc_inb(ahc, ACCUM));
  printk("SEQ_FLAGS == 0x%x, SCBPTR == 0x%x, BTT == 0x%x, "
         "SINDEX == 0x%x\n",
         ahc_inb(ahc, SEQ_FLAGS), ahc_inb(ahc, SCBPTR),
         ahc_index_busy_tcl(ahc,
       BUILD_TCL(ahc_inb(ahc, SAVED_SCSIID),
          ahc_inb(ahc, SAVED_LUN))),
         ahc_inb(ahc, SINDEX));
  printk("SCSIID == 0x%x, SCB_SCSIID == 0x%x, SCB_LUN == 0x%x, "
         "SCB_TAG == 0x%x, SCB_CONTROL == 0x%x\n",
         ahc_inb(ahc, SCSIID), ahc_inb(ahc, SCB_SCSIID),
         ahc_inb(ahc, SCB_LUN), ahc_inb(ahc, SCB_TAG),
         ahc_inb(ahc, SCB_CONTROL));
  printk("SCSIBUSL == 0x%x, SCSISIGI == 0x%x\n",
         ahc_inb(ahc, SCSIBUSL), ahc_inb(ahc, SCSISIGI));
  printk("SXFRCTL0 == 0x%x\n", ahc_inb(ahc, SXFRCTL0));
  printk("SEQCTL == 0x%x\n", ahc_inb(ahc, SEQCTL));
  ahc_dump_card_state(ahc);
  ahc->msgout_buf[0] = MSG_BUS_DEV_RESET;
  ahc->msgout_len = 1;
  ahc->msgout_index = 0;
  ahc->msg_type = MSG_TYPE_INITIATOR_MSGOUT;
  ahc_outb(ahc, MSG_OUT, HOST_MSG);
  ahc_assert_atn(ahc);
  break;
 }
 case 128:
 {
  u_int rejbyte = ahc_inb(ahc, ACCUM);
  printk("%s:%c:%d: Warning - unknown message received from "
         "target (0x%x).  Rejecting\n",
         ahc_name(ahc), devinfo.channel, devinfo.target, rejbyte);
  break;
 }
 case 133:
 {
  ahc_handle_proto_violation(ahc);
  break;
 }
 case 141:
  ahc_handle_ign_wide_residue(ahc, &devinfo);
  break;
 case 135:
  ahc_reinitialize_dataptrs(ahc);
  break;
 case 145:
 {
  u_int lastphase;

  lastphase = ahc_inb(ahc, LASTPHASE);
  printk("%s:%c:%d: unknown scsi bus phase %x, "
         "lastphase = 0x%x.  Attempting to continue\n",
         ahc_name(ahc), devinfo.channel, devinfo.target,
         lastphase, ahc_inb(ahc, SCSISIGI));
  break;
 }
 case 140:
 {
  u_int lastphase;

  lastphase = ahc_inb(ahc, LASTPHASE);
  printk("%s:%c:%d: Missed busfree. "
         "Lastphase = 0x%x, Curphase = 0x%x\n",
         ahc_name(ahc), devinfo.channel, devinfo.target,
         lastphase, ahc_inb(ahc, SCSISIGI));
  ahc_restart(ahc);
  return;
 }
 case 142:
 {
  if (ahc->msg_type == MSG_TYPE_NONE) {
   struct scb *scb;
   u_int scb_index;
   u_int bus_phase;

   bus_phase = ahc_inb(ahc, SCSISIGI) & PHASE_MASK;
   if (bus_phase != P_MESGIN
    && bus_phase != P_MESGOUT) {
    printk("ahc_intr: HOST_MSG_LOOP bad "
           "phase 0x%x\n",
          bus_phase);




    ahc_clear_intstat(ahc);
    ahc_restart(ahc);
    return;
   }

   scb_index = ahc_inb(ahc, SCB_TAG);
   scb = ahc_lookup_scb(ahc, scb_index);
   if (devinfo.role == ROLE_INITIATOR) {
    if (bus_phase == P_MESGOUT) {
     if (scb == ((void*)0))
      panic("HOST_MSG_LOOP with "
            "invalid SCB %x\n",
            scb_index);

     ahc_setup_initiator_msgout(ahc,
           &devinfo,
           scb);
    } else {
     ahc->msg_type =
         MSG_TYPE_INITIATOR_MSGIN;
     ahc->msgin_index = 0;
    }
   }
  }

  ahc_handle_message_phase(ahc);
  break;
 }
 case 134:
 {
  if ((intstat & SCSIINT) == 0
   && (ahc_inb(ahc, SSTAT1) & SCSIPERR) != 0) {

   if ((ahc->features & AHC_DT) == 0) {
    u_int curphase;







    curphase = ahc_inb(ahc, SCSISIGI) & PHASE_MASK;
    ahc_outb(ahc, LASTPHASE, curphase);
    ahc_outb(ahc, SCSISIGO, curphase);
   }
   if ((ahc_inb(ahc, SCSISIGI) & (CDI|MSGI)) == 0) {
    int wait;







    ahc_outb(ahc, SXFRCTL1,
      ahc_inb(ahc, SXFRCTL1) | BITBUCKET);
    wait = 5000;
    while (--wait != 0) {
     if ((ahc_inb(ahc, SCSISIGI)
       & (CDI|MSGI)) != 0)
      break;
     ahc_delay(100);
    }
    ahc_outb(ahc, SXFRCTL1,
      ahc_inb(ahc, SXFRCTL1) & ~BITBUCKET);
    if (wait == 0) {
     struct scb *scb;
     u_int scb_index;

     ahc_print_devinfo(ahc, &devinfo);
     printk("Unable to clear parity error.  "
            "Resetting bus.\n");
     scb_index = ahc_inb(ahc, SCB_TAG);
     scb = ahc_lookup_scb(ahc, scb_index);
     if (scb != ((void*)0))
      ahc_set_transaction_status(scb,
          CAM_UNCOR_PARITY);
     ahc_reset_channel(ahc, devinfo.channel,
                       TRUE);
    }
   } else {
    ahc_inb(ahc, SCSIDATL);
   }
  }
  break;
 }
 case 143:
 {
  u_int scbindex = ahc_inb(ahc, SCB_TAG);
  u_int lastphase = ahc_inb(ahc, LASTPHASE);
  u_int i;

  scb = ahc_lookup_scb(ahc, scbindex);
  for (i = 0; i < num_phases; i++) {
   if (lastphase == ahc_phase_table[i].phase)
    break;
  }
  ahc_print_path(ahc, scb);
  printk("data overrun detected %s."
         "  Tag == 0x%x.\n",
         ahc_phase_table[i].phasemsg,
           scb->hscb->tag);
  ahc_print_path(ahc, scb);
  printk("%s seen Data Phase.  Length = %ld.  NumSGs = %d.\n",
         ahc_inb(ahc, SEQ_FLAGS) & DPHASE ? "Have" : "Haven't",
         ahc_get_transfer_length(scb), scb->sg_count);
  if (scb->sg_count > 0) {
   for (i = 0; i < scb->sg_count; i++) {

    printk("sg[%d] - Addr 0x%x%x : Length %d\n",
           i,
           (ahc_le32toh(scb->sg_list[i].len) >> 24
            & SG_HIGH_ADDR_BITS),
           ahc_le32toh(scb->sg_list[i].addr),
           ahc_le32toh(scb->sg_list[i].len)
           & AHC_SG_LEN_MASK);
   }
  }




  ahc_freeze_devq(ahc, scb);
  if ((scb->flags & SCB_SENSE) == 0) {
   ahc_set_transaction_status(scb, CAM_DATA_RUN_ERR);
  } else {
   scb->flags &= ~SCB_SENSE;
   ahc_set_transaction_status(scb, CAM_AUTOSENSE_FAIL);
  }
  ahc_freeze_scb(scb);

  if ((ahc->features & AHC_ULTRA2) != 0) {




   ahc_outb(ahc, SXFRCTL0,
     ahc_inb(ahc, SXFRCTL0) | CLRSTCNT|CLRCHN);
   ahc_outb(ahc, SXFRCTL0,
     ahc_inb(ahc, SXFRCTL0) | CLRSTCNT|CLRCHN);
  }
  if ((ahc->flags & AHC_39BIT_ADDRESSING) != 0) {
   u_int dscommand1;


   dscommand1 = ahc_inb(ahc, DSCOMMAND1);
   ahc_outb(ahc, DSCOMMAND1, dscommand1 | HADDLDSEL0);
   ahc_outb(ahc, HADDR, 0);
   ahc_outb(ahc, DSCOMMAND1, dscommand1);
  }
  break;
 }
 case 139:
 {
  u_int scbindex;

  printk("%s:%c:%d:%d: Attempt to issue message failed\n",
         ahc_name(ahc), devinfo.channel, devinfo.target,
         devinfo.lun);
  scbindex = ahc_inb(ahc, SCB_TAG);
  scb = ahc_lookup_scb(ahc, scbindex);
  if (scb != ((void*)0)
   && (scb->flags & SCB_RECOVERY_SCB) != 0)




   ahc_search_qinfifo(ahc, SCB_GET_TARGET(ahc, scb),
        SCB_GET_CHANNEL(ahc, scb),
        SCB_GET_LUN(scb), scb->hscb->tag,
        ROLE_INITIATOR, 0,
        SEARCH_REMOVE);
  break;
 }
 case 138:
 {
  printk("%s: No free or disconnected SCBs\n", ahc_name(ahc));
  ahc_dump_card_state(ahc);
  panic("for safety");
  break;
 }
 case 132:
 {
  u_int scbptr;

  scbptr = ahc_inb(ahc, SCBPTR);
  printk("Bogus TAG after DMA.  SCBPTR %d, tag %d, our tag %d\n",
         scbptr, ahc_inb(ahc, ARG_1),
         ahc->scb_data->hscbs[scbptr].tag);
  ahc_dump_card_state(ahc);
  panic("for safety");
  break;
 }
 case 136:
 {
  printk("%s: BTT calculation out of range\n", ahc_name(ahc));
  printk("SAVED_SCSIID == 0x%x, SAVED_LUN == 0x%x, "
         "ARG_1 == 0x%x ACCUM = 0x%x\n",
         ahc_inb(ahc, SAVED_SCSIID), ahc_inb(ahc, SAVED_LUN),
         ahc_inb(ahc, ARG_1), ahc_inb(ahc, ACCUM));
  printk("SEQ_FLAGS == 0x%x, SCBPTR == 0x%x, BTT == 0x%x, "
         "SINDEX == 0x%x\n, A == 0x%x\n",
         ahc_inb(ahc, SEQ_FLAGS), ahc_inb(ahc, SCBPTR),
         ahc_index_busy_tcl(ahc,
       BUILD_TCL(ahc_inb(ahc, SAVED_SCSIID),
          ahc_inb(ahc, SAVED_LUN))),
         ahc_inb(ahc, SINDEX),
         ahc_inb(ahc, ACCUM));
  printk("SCSIID == 0x%x, SCB_SCSIID == 0x%x, SCB_LUN == 0x%x, "
         "SCB_TAG == 0x%x, SCB_CONTROL == 0x%x\n",
         ahc_inb(ahc, SCSIID), ahc_inb(ahc, SCB_SCSIID),
         ahc_inb(ahc, SCB_LUN), ahc_inb(ahc, SCB_TAG),
         ahc_inb(ahc, SCB_CONTROL));
  printk("SCSIBUSL == 0x%x, SCSISIGI == 0x%x\n",
         ahc_inb(ahc, SCSIBUSL), ahc_inb(ahc, SCSISIGI));
  ahc_dump_card_state(ahc);
  panic("for safety");
  break;
 }
 default:
  printk("ahc_intr: seqint, "
         "intstat == 0x%x, scsisigi = 0x%x\n",
         intstat, ahc_inb(ahc, SCSISIGI));
  break;
 }
unpause:





 ahc_unpause(ahc);
}
