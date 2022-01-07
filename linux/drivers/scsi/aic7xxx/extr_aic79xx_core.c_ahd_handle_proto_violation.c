
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct scb {int flags; } ;
struct ahd_softc {int msgout_len; int msg_type; scalar_t__ msgout_index; int * msgout_buf; } ;
struct ahd_devinfo {int dummy; } ;
struct TYPE_2__ {int phasemsg; } ;


 int CAM_SEQUENCE_FAIL ;
 int ENSELO ;
 int HOST_MSG ;
 int LASTPHASE ;
 int MSG_ABORT_TASK ;
 int MSG_OUT ;
 int MSG_TYPE_INITIATOR_MSGOUT ;
 int NOT_IDENTIFIED ;
 int NO_CDB_SENT ;
 int PHASE_MASK ;
 int P_COMMAND ;
 int P_DATAIN_DT ;
 int SCB_ABORT ;
 int SCB_CONTROL ;
 int SCSISEQ0 ;
 int SCSISIGI ;
 int SEQ_FLAGS ;
 int STATUS_RCVD ;
 int TRUE ;
 int ahd_assert_atn (struct ahd_softc*) ;
 int ahd_dump_card_state (struct ahd_softc*) ;
 int ahd_fetch_devinfo (struct ahd_softc*,struct ahd_devinfo*) ;
 int ahd_get_scbptr (struct ahd_softc*) ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_inb_scbram (struct ahd_softc*,int ) ;
 TYPE_1__* ahd_lookup_phase_entry (int) ;
 struct scb* ahd_lookup_scb (struct ahd_softc*,int) ;
 int ahd_name (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;
 int ahd_print_devinfo (struct ahd_softc*,struct ahd_devinfo*) ;
 int ahd_print_path (struct ahd_softc*,struct scb*) ;
 int ahd_reset_channel (struct ahd_softc*,char,int ) ;
 int ahd_set_transaction_status (struct scb*,int ) ;
 int printk (char*,...) ;

__attribute__((used)) static void
ahd_handle_proto_violation(struct ahd_softc *ahd)
{
 struct ahd_devinfo devinfo;
 struct scb *scb;
 u_int scbid;
 u_int seq_flags;
 u_int curphase;
 u_int lastphase;
 int found;

 ahd_fetch_devinfo(ahd, &devinfo);
 scbid = ahd_get_scbptr(ahd);
 scb = ahd_lookup_scb(ahd, scbid);
 seq_flags = ahd_inb(ahd, SEQ_FLAGS);
 curphase = ahd_inb(ahd, SCSISIGI) & PHASE_MASK;
 lastphase = ahd_inb(ahd, LASTPHASE);
 if ((seq_flags & NOT_IDENTIFIED) != 0) {






  ahd_print_devinfo(ahd, &devinfo);
  printk("Target did not send an IDENTIFY message. "
         "LASTPHASE = 0x%x.\n", lastphase);
  scb = ((void*)0);
 } else if (scb == ((void*)0)) {




  ahd_print_devinfo(ahd, &devinfo);
  printk("No SCB found during protocol violation\n");
  goto proto_violation_reset;
 } else {
  ahd_set_transaction_status(scb, CAM_SEQUENCE_FAIL);
  if ((seq_flags & NO_CDB_SENT) != 0) {
   ahd_print_path(ahd, scb);
   printk("No or incomplete CDB sent to device.\n");
  } else if ((ahd_inb_scbram(ahd, SCB_CONTROL)
     & STATUS_RCVD) == 0) {







   ahd_print_path(ahd, scb);
   printk("Completed command without status.\n");
  } else {
   ahd_print_path(ahd, scb);
   printk("Unknown protocol violation.\n");
   ahd_dump_card_state(ahd);
  }
 }
 if ((lastphase & ~P_DATAIN_DT) == 0
  || lastphase == P_COMMAND) {
proto_violation_reset:






  found = ahd_reset_channel(ahd, 'A', TRUE);
  printk("%s: Issued Channel %c Bus Reset. "
         "%d SCBs aborted\n", ahd_name(ahd), 'A', found);
 } else {





  ahd_outb(ahd, SCSISEQ0,
    ahd_inb(ahd, SCSISEQ0) & ~ENSELO);
  ahd_assert_atn(ahd);
  ahd_outb(ahd, MSG_OUT, HOST_MSG);
  if (scb == ((void*)0)) {
   ahd_print_devinfo(ahd, &devinfo);
   ahd->msgout_buf[0] = MSG_ABORT_TASK;
   ahd->msgout_len = 1;
   ahd->msgout_index = 0;
   ahd->msg_type = MSG_TYPE_INITIATOR_MSGOUT;
  } else {
   ahd_print_path(ahd, scb);
   scb->flags |= SCB_ABORT;
  }
  printk("Protocol violation %s.  Attempting to abort.\n",
         ahd_lookup_phase_entry(curphase)->phasemsg);
 }
}
