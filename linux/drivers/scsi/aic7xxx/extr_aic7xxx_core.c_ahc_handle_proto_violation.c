
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct scb {int flags; } ;
struct ahc_softc {int msgout_len; int msg_type; scalar_t__ msgout_index; int * msgout_buf; } ;
struct ahc_devinfo {int dummy; } ;
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
 int SCB_TAG ;
 int SCSISEQ ;
 int SCSISIGI ;
 int SEQ_FLAGS ;
 int STATUS_RCVD ;
 int TRUE ;
 int ahc_assert_atn (struct ahc_softc*) ;
 int ahc_dump_card_state (struct ahc_softc*) ;
 int ahc_fetch_devinfo (struct ahc_softc*,struct ahc_devinfo*) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 TYPE_1__* ahc_lookup_phase_entry (int) ;
 struct scb* ahc_lookup_scb (struct ahc_softc*,int) ;
 int ahc_name (struct ahc_softc*) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;
 int ahc_print_devinfo (struct ahc_softc*,struct ahc_devinfo*) ;
 int ahc_print_path (struct ahc_softc*,struct scb*) ;
 int ahc_reset_channel (struct ahc_softc*,char,int ) ;
 int ahc_set_transaction_status (struct scb*,int ) ;
 int printk (char*,...) ;

__attribute__((used)) static void
ahc_handle_proto_violation(struct ahc_softc *ahc)
{
 struct ahc_devinfo devinfo;
 struct scb *scb;
 u_int scbid;
 u_int seq_flags;
 u_int curphase;
 u_int lastphase;
 int found;

 ahc_fetch_devinfo(ahc, &devinfo);
 scbid = ahc_inb(ahc, SCB_TAG);
 scb = ahc_lookup_scb(ahc, scbid);
 seq_flags = ahc_inb(ahc, SEQ_FLAGS);
 curphase = ahc_inb(ahc, SCSISIGI) & PHASE_MASK;
 lastphase = ahc_inb(ahc, LASTPHASE);
 if ((seq_flags & NOT_IDENTIFIED) != 0) {






  ahc_print_devinfo(ahc, &devinfo);
  printk("Target did not send an IDENTIFY message. "
         "LASTPHASE = 0x%x.\n", lastphase);
  scb = ((void*)0);
 } else if (scb == ((void*)0)) {




  ahc_print_devinfo(ahc, &devinfo);
  printk("No SCB found during protocol violation\n");
  goto proto_violation_reset;
 } else {
  ahc_set_transaction_status(scb, CAM_SEQUENCE_FAIL);
  if ((seq_flags & NO_CDB_SENT) != 0) {
   ahc_print_path(ahc, scb);
   printk("No or incomplete CDB sent to device.\n");
  } else if ((ahc_inb(ahc, SCB_CONTROL) & STATUS_RCVD) == 0) {







   ahc_print_path(ahc, scb);
   printk("Completed command without status.\n");
  } else {
   ahc_print_path(ahc, scb);
   printk("Unknown protocol violation.\n");
   ahc_dump_card_state(ahc);
  }
 }
 if ((lastphase & ~P_DATAIN_DT) == 0
  || lastphase == P_COMMAND) {
proto_violation_reset:






  found = ahc_reset_channel(ahc, 'A', TRUE);
  printk("%s: Issued Channel %c Bus Reset. "
         "%d SCBs aborted\n", ahc_name(ahc), 'A', found);
 } else {





  ahc_outb(ahc, SCSISEQ,
    ahc_inb(ahc, SCSISEQ) & ~ENSELO);
  ahc_assert_atn(ahc);
  ahc_outb(ahc, MSG_OUT, HOST_MSG);
  if (scb == ((void*)0)) {
   ahc_print_devinfo(ahc, &devinfo);
   ahc->msgout_buf[0] = MSG_ABORT_TASK;
   ahc->msgout_len = 1;
   ahc->msgout_index = 0;
   ahc->msg_type = MSG_TYPE_INITIATOR_MSGOUT;
  } else {
   ahc_print_path(ahc, scb);
   scb->flags |= SCB_ABORT;
  }
  printk("Protocol violation %s.  Attempting to abort.\n",
         ahc_lookup_phase_entry(curphase)->phasemsg);
 }
}
