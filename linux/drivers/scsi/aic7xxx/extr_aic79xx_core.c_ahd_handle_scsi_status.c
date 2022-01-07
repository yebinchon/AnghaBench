
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_status_iu_header {int status; int flags; int pkt_failures_length; int sense_length; } ;
struct scsi_sense {int byte2; int control; int length; int * unused; int opcode; } ;
struct scb {int flags; int sg_count; struct ahd_dma_seg* sg_list; scalar_t__ sense_data; struct hardware_scb* hscb; } ;
struct TYPE_5__ {scalar_t__ cdb; } ;
struct TYPE_4__ {int scsi_status; } ;
struct TYPE_6__ {TYPE_2__ idata; TYPE_1__ istatus; } ;
struct hardware_scb {int cdb_len; int control; TYPE_3__ shared_data; } ;
struct ahd_transinfo {int protocol_version; } ;
struct ahd_tmode_tstate {int auto_negotiate; } ;
struct ahd_softc {int qfreeze_cnt; } ;
struct ahd_initiator_tinfo {struct ahd_transinfo curr; } ;
struct ahd_dma_seg {int dummy; } ;
struct ahd_devinfo {int target_mask; int target; int our_scsiid; int channel; } ;


 int AHD_NEG_IF_NON_ASYNC ;
 int AHD_SHOW_SENSE ;
 int BUS_DMASYNC_POSTREAD ;
 int CAM_AUTOSENSE_FAIL ;
 int CAM_REQ_CMP_ERR ;
 int CAM_SCSI_STATUS_ERROR ;
 int KERNEL_QFREEZE_COUNT ;
 int MK_MESSAGE ;
 int REQUEST_SENSE ;
 int ROLE_INITIATOR ;
 int SCB_ABORT ;
 int SCB_AUTO_NEGOTIATE ;
 int SCB_DEVICE_RESET ;
 int SCB_GET_CHANNEL (struct ahd_softc*,struct scb*) ;
 int SCB_GET_LUN (struct scb*) ;
 int SCB_GET_OUR_ID (struct scb*) ;
 int SCB_GET_TAG (struct scb*) ;
 int SCB_GET_TARGET (struct ahd_softc*,struct scb*) ;
 int SCB_NEGOTIATE ;
 int SCB_PKT_SENSE ;
 int SCB_SENSE ;
 int SCSI_REV_2 ;
 int SIU_PKTFAIL_CODE (struct scsi_status_iu_header*) ;
 int SIU_RSPVALID ;
 int SIU_SNSVALID ;

 int TRUE ;
 int ahd_compile_devinfo (struct ahd_devinfo*,int ,int ,int,int ,int ) ;
 int ahd_debug ;
 int ahd_done (struct ahd_softc*,struct scb*) ;
 struct ahd_initiator_tinfo* ahd_fetch_transinfo (struct ahd_softc*,int ,int ,int ,struct ahd_tmode_tstate**) ;
 int ahd_freeze_devq (struct ahd_softc*,struct scb*) ;
 int ahd_freeze_scb (struct scb*) ;
 int ahd_get_residual (struct scb*) ;
 int ahd_get_sense_bufaddr (struct ahd_softc*,struct scb*) ;
 int ahd_get_sense_bufsize (struct ahd_softc*,struct scb*) ;
 int ahd_get_transfer_length (struct scb*) ;
 scalar_t__ ahd_is_paused (struct ahd_softc*) ;
 int ahd_name (struct ahd_softc*) ;
 int ahd_outw (struct ahd_softc*,int ,int ) ;
 int ahd_pause (struct ahd_softc*) ;
 int ahd_perform_autosense (struct scb*) ;
 int ahd_print_path (struct ahd_softc*,struct scb*) ;
 int ahd_queue_scb (struct ahd_softc*,struct scb*) ;
 int ahd_set_scsi_status (struct scb*,int) ;
 int ahd_set_transaction_status (struct scb*,int ) ;
 int ahd_setup_data_scb (struct ahd_softc*,struct scb*) ;
 struct ahd_dma_seg* ahd_sg_setup (struct ahd_softc*,struct scb*,struct ahd_dma_seg*,int ,int ,int ) ;
 int ahd_sync_sense (struct ahd_softc*,struct scb*,int ) ;
 int ahd_unpause (struct ahd_softc*) ;
 int ahd_update_neg_request (struct ahd_softc*,struct ahd_devinfo*,struct ahd_tmode_tstate*,struct ahd_initiator_tinfo*,int ) ;
 int ahd_update_residual (struct ahd_softc*,struct scb*) ;
 int printk (char*,...) ;
 int scsi_4btoul (int ) ;

__attribute__((used)) static void
ahd_handle_scsi_status(struct ahd_softc *ahd, struct scb *scb)
{
 struct hardware_scb *hscb;
 int paused;
 hscb = scb->hscb;

 if (ahd_is_paused(ahd)) {
  paused = 1;
 } else {
  paused = 0;
  ahd_pause(ahd);
 }


 ahd_freeze_devq(ahd, scb);
 ahd_freeze_scb(scb);
 ahd->qfreeze_cnt++;
 ahd_outw(ahd, KERNEL_QFREEZE_COUNT, ahd->qfreeze_cnt);

 if (paused == 0)
  ahd_unpause(ahd);


 if ((scb->flags & SCB_SENSE) != 0) {




  scb->flags &= ~SCB_SENSE;
  ahd_set_transaction_status(scb, CAM_AUTOSENSE_FAIL);
  ahd_done(ahd, scb);
  return;
 }
 ahd_set_transaction_status(scb, CAM_SCSI_STATUS_ERROR);
 ahd_set_scsi_status(scb, hscb->shared_data.istatus.scsi_status);
 switch (hscb->shared_data.istatus.scsi_status) {
 case 128:
 {
  struct scsi_status_iu_header *siu;

  ahd_sync_sense(ahd, scb, BUS_DMASYNC_POSTREAD);
  siu = (struct scsi_status_iu_header *)scb->sense_data;
  ahd_set_scsi_status(scb, siu->status);
  if ((siu->flags & SIU_RSPVALID) != 0) {
   ahd_print_path(ahd, scb);
   if (scsi_4btoul(siu->pkt_failures_length) < 4) {
    printk("Unable to parse pkt_failures\n");
   } else {

    switch (SIU_PKTFAIL_CODE(siu)) {
    case 131:
     printk("No packet failure found\n");
     break;
    case 134:
     printk("Invalid Command IU Field\n");
     break;
    case 129:
     printk("TMF not supported\n");
     break;
    case 130:
     printk("TMF failed\n");
     break;
    case 132:
     printk("Invalid L_Q Type code\n");
     break;
    case 133:
     printk("Illegal request\n");
    default:
     break;
    }
   }
   if (siu->status == 135)
    ahd_set_transaction_status(scb,
          CAM_REQ_CMP_ERR);
  }
  if ((siu->flags & SIU_SNSVALID) != 0) {
   scb->flags |= SCB_PKT_SENSE;




  }
  ahd_done(ahd, scb);
  break;
 }
 case 136:
 case 137:
 {
  struct ahd_devinfo devinfo;
  struct ahd_dma_seg *sg;
  struct scsi_sense *sc;
  struct ahd_initiator_tinfo *targ_info;
  struct ahd_tmode_tstate *tstate;
  struct ahd_transinfo *tinfo;
  if (ahd_perform_autosense(scb) == 0)
   break;

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
  sg = scb->sg_list;
  sc = (struct scsi_sense *)hscb->shared_data.idata.cdb;



  ahd_update_residual(ahd, scb);






  scb->sg_count = 0;
  sg = ahd_sg_setup(ahd, scb, sg, ahd_get_sense_bufaddr(ahd, scb),
      ahd_get_sense_bufsize(ahd, scb),
              TRUE);
  sc->opcode = REQUEST_SENSE;
  sc->byte2 = 0;
  if (tinfo->protocol_version <= SCSI_REV_2
   && SCB_GET_LUN(scb) < 8)
   sc->byte2 = SCB_GET_LUN(scb) << 5;
  sc->unused[0] = 0;
  sc->unused[1] = 0;
  sc->length = ahd_get_sense_bufsize(ahd, scb);
  sc->control = 0;
  hscb->control = 0;
  if (ahd_get_residual(scb) == ahd_get_transfer_length(scb)) {
   ahd_update_neg_request(ahd, &devinfo,
            tstate, targ_info,
            AHD_NEG_IF_NON_ASYNC);
  }
  if (tstate->auto_negotiate & devinfo.target_mask) {
   hscb->control |= MK_MESSAGE;
   scb->flags &=
       ~(SCB_NEGOTIATE|SCB_ABORT|SCB_DEVICE_RESET);
   scb->flags |= SCB_AUTO_NEGOTIATE;
  }
  hscb->cdb_len = sizeof(*sc);
  ahd_setup_data_scb(ahd, scb);
  scb->flags |= SCB_SENSE;
  ahd_queue_scb(ahd, scb);
  break;
 }
 case 135:
  printk("%s: Interrupted for status of 0???\n",
         ahd_name(ahd));

 default:
  ahd_done(ahd, scb);
  break;
 }
}
