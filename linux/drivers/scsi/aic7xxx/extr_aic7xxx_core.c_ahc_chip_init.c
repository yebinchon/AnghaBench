
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct ahc_softc {int features; int flags; int our_id_b; int seltime_b; int our_id; int seltime; int* qoutfifo; int* qinfifo; int shared_data_busaddr; int tqinfifonext; int qinfifonext; int qoutfifonext; TYPE_2__* next_queued_scb; TYPE_3__* scb_data; } ;
struct TYPE_6__ {int hscb_busaddr; } ;
struct TYPE_5__ {TYPE_1__* hscb; } ;
struct TYPE_4__ {int tag; } ;


 int ACTNEGEN ;
 int AHC_HS_MAILBOX ;
 int AHC_INITIATORROLE ;
 int AHC_MULTI_TID ;
 int AHC_NUM_LUNS ;
 int AHC_QUEUE_REGS ;
 int AHC_SCB_BTT ;
 int AHC_TARGETMODE ;
 int AHC_TERM_ENB_A ;
 int AHC_TERM_ENB_B ;
 int AHC_TWIN ;
 int AHC_ULTRA2 ;
 int BUILD_TCL (int,int) ;
 int BUS_DMASYNC_PREREAD ;
 scalar_t__ CMDSIZE_TABLE ;
 int DFON ;
 scalar_t__ DISCONNECTED_SCBH ;
 int ENAB20 ;
 int ENAB40 ;
 int ENAUTOATNO ;
 int ENAUTOATNP ;
 int ENIOERR ;
 int ENRSELI ;
 int ENSCSIPERR ;
 int ENSCSIRST ;
 int ENSELO ;
 int ENSELTIMO ;
 int ENSPCHK ;
 int ENSTIMER ;
 scalar_t__ HNSCB_QOFF ;
 scalar_t__ HSCB_ADDR ;
 scalar_t__ HS_MAILBOX ;
 scalar_t__ KERNEL_QINPOS ;
 scalar_t__ KERNEL_TQINPOS ;
 int MSG_NOOP ;
 scalar_t__ MSG_OUT ;
 scalar_t__ NEXT_QUEUED_SCB ;
 scalar_t__ QINPOS ;
 scalar_t__ QOFF_CTLSTA ;
 scalar_t__ QOUTPOS ;
 scalar_t__ SBLKCTL ;
 int SCB_LIST_NULL ;
 int SCB_QSIZE_256 ;
 scalar_t__ SCSICONF ;
 scalar_t__ SCSIID ;
 scalar_t__ SCSIID_ULTRA2 ;
 scalar_t__ SCSISEQ_TEMPLATE ;
 scalar_t__ SDSCB_QOFF ;
 int SELBUSB ;
 scalar_t__ SEQ_FLAGS ;
 scalar_t__ SEQ_FLAGS2 ;
 scalar_t__ SHARED_DATA_ADDR ;
 scalar_t__ SIMODE0 ;
 scalar_t__ SIMODE1 ;
 scalar_t__ SNSCB_QOFF ;
 int SPIOEN ;
 int STIMESEL ;
 int STPWEN ;
 scalar_t__ SXFRCTL0 ;
 scalar_t__ SXFRCTL1 ;
 scalar_t__ TARGID ;
 scalar_t__ TQINPOS ;
 scalar_t__ WAITING_SCBH ;
 int ahc_build_free_scb_list (struct ahc_softc*) ;
 int ahc_delay (int) ;
 int ahc_inb (struct ahc_softc*,scalar_t__) ;
 int ahc_loadseq (struct ahc_softc*) ;
 int ahc_name (struct ahc_softc*) ;
 int ahc_outb (struct ahc_softc*,scalar_t__,int) ;
 int ahc_restart (struct ahc_softc*) ;
 int ahc_sync_qoutfifo (struct ahc_softc*,int ) ;
 int ahc_unbusy_tcl (struct ahc_softc*,int ) ;
 scalar_t__ bootverbose ;
 int printk (char*,int ) ;

int
ahc_chip_init(struct ahc_softc *ahc)
{
 int term;
 int error;
 u_int i;
 u_int scsi_conf;
 u_int scsiseq_template;
 uint32_t physaddr;

 ahc_outb(ahc, SEQ_FLAGS, 0);
 ahc_outb(ahc, SEQ_FLAGS2, 0);


 if (ahc->features & AHC_TWIN) {




  ahc_outb(ahc, SBLKCTL, ahc_inb(ahc, SBLKCTL) | SELBUSB);
  term = (ahc->flags & AHC_TERM_ENB_B) != 0 ? STPWEN : 0;
  ahc_outb(ahc, SCSIID, ahc->our_id_b);
  scsi_conf = ahc_inb(ahc, SCSICONF + 1);
  ahc_outb(ahc, SXFRCTL1, (scsi_conf & (ENSPCHK|STIMESEL))
     |term|ahc->seltime_b|ENSTIMER|ACTNEGEN);
  if ((ahc->features & AHC_ULTRA2) != 0)
   ahc_outb(ahc, SIMODE0, ahc_inb(ahc, SIMODE0)|ENIOERR);
  ahc_outb(ahc, SIMODE1, ENSELTIMO|ENSCSIRST|ENSCSIPERR);
  ahc_outb(ahc, SXFRCTL0, DFON|SPIOEN);


  ahc_outb(ahc, SBLKCTL, ahc_inb(ahc, SBLKCTL) & ~SELBUSB);
 }
 term = (ahc->flags & AHC_TERM_ENB_A) != 0 ? STPWEN : 0;
 if ((ahc->features & AHC_ULTRA2) != 0)
  ahc_outb(ahc, SCSIID_ULTRA2, ahc->our_id);
 else
  ahc_outb(ahc, SCSIID, ahc->our_id);
 scsi_conf = ahc_inb(ahc, SCSICONF);
 ahc_outb(ahc, SXFRCTL1, (scsi_conf & (ENSPCHK|STIMESEL))
    |term|ahc->seltime
    |ENSTIMER|ACTNEGEN);
 if ((ahc->features & AHC_ULTRA2) != 0)
  ahc_outb(ahc, SIMODE0, ahc_inb(ahc, SIMODE0)|ENIOERR);
 ahc_outb(ahc, SIMODE1, ENSELTIMO|ENSCSIRST|ENSCSIPERR);
 ahc_outb(ahc, SXFRCTL0, DFON|SPIOEN);


 for (i = 0; i < 16; i++) {
  ahc_unbusy_tcl(ahc, BUILD_TCL(i << 4, 0));
  if ((ahc->flags & AHC_SCB_BTT) != 0) {
   int lun;





   for (lun = 1; lun < AHC_NUM_LUNS; lun++)
    ahc_unbusy_tcl(ahc, BUILD_TCL(i << 4, lun));
  }
 }


 for (i = 0; i < 256; i++)
  ahc->qoutfifo[i] = SCB_LIST_NULL;
 ahc_sync_qoutfifo(ahc, BUS_DMASYNC_PREREAD);

 for (i = 0; i < 256; i++)
  ahc->qinfifo[i] = SCB_LIST_NULL;

 if ((ahc->features & AHC_MULTI_TID) != 0) {
  ahc_outb(ahc, TARGID, 0);
  ahc_outb(ahc, TARGID + 1, 0);
 }




 physaddr = ahc->scb_data->hscb_busaddr;
 ahc_outb(ahc, HSCB_ADDR, physaddr & 0xFF);
 ahc_outb(ahc, HSCB_ADDR + 1, (physaddr >> 8) & 0xFF);
 ahc_outb(ahc, HSCB_ADDR + 2, (physaddr >> 16) & 0xFF);
 ahc_outb(ahc, HSCB_ADDR + 3, (physaddr >> 24) & 0xFF);

 physaddr = ahc->shared_data_busaddr;
 ahc_outb(ahc, SHARED_DATA_ADDR, physaddr & 0xFF);
 ahc_outb(ahc, SHARED_DATA_ADDR + 1, (physaddr >> 8) & 0xFF);
 ahc_outb(ahc, SHARED_DATA_ADDR + 2, (physaddr >> 16) & 0xFF);
 ahc_outb(ahc, SHARED_DATA_ADDR + 3, (physaddr >> 24) & 0xFF);






 ahc_outb(ahc, CMDSIZE_TABLE, 5);
 ahc_outb(ahc, CMDSIZE_TABLE + 1, 9);
 ahc_outb(ahc, CMDSIZE_TABLE + 2, 9);
 ahc_outb(ahc, CMDSIZE_TABLE + 3, 0);
 ahc_outb(ahc, CMDSIZE_TABLE + 4, 15);
 ahc_outb(ahc, CMDSIZE_TABLE + 5, 11);
 ahc_outb(ahc, CMDSIZE_TABLE + 6, 0);
 ahc_outb(ahc, CMDSIZE_TABLE + 7, 0);

 if ((ahc->features & AHC_HS_MAILBOX) != 0)
  ahc_outb(ahc, HS_MAILBOX, 0);


 if ((ahc->features & AHC_TARGETMODE) != 0) {
  ahc->tqinfifonext = 1;
  ahc_outb(ahc, KERNEL_TQINPOS, ahc->tqinfifonext - 1);
  ahc_outb(ahc, TQINPOS, ahc->tqinfifonext);
 }
 ahc->qinfifonext = 0;
 ahc->qoutfifonext = 0;
 if ((ahc->features & AHC_QUEUE_REGS) != 0) {
  ahc_outb(ahc, QOFF_CTLSTA, SCB_QSIZE_256);
  ahc_outb(ahc, HNSCB_QOFF, ahc->qinfifonext);
  ahc_outb(ahc, SNSCB_QOFF, ahc->qinfifonext);
  ahc_outb(ahc, SDSCB_QOFF, 0);
 } else {
  ahc_outb(ahc, KERNEL_QINPOS, ahc->qinfifonext);
  ahc_outb(ahc, QINPOS, ahc->qinfifonext);
  ahc_outb(ahc, QOUTPOS, ahc->qoutfifonext);
 }


 ahc_outb(ahc, WAITING_SCBH, SCB_LIST_NULL);


 ahc_outb(ahc, DISCONNECTED_SCBH, SCB_LIST_NULL);


 ahc_outb(ahc, MSG_OUT, MSG_NOOP);






 scsiseq_template = ENSELO|ENAUTOATNO|ENAUTOATNP;
 if ((ahc->flags & AHC_INITIATORROLE) != 0)
  scsiseq_template |= ENRSELI;
 ahc_outb(ahc, SCSISEQ_TEMPLATE, scsiseq_template);


 ahc_build_free_scb_list(ahc);




 ahc_outb(ahc, NEXT_QUEUED_SCB, ahc->next_queued_scb->hscb->tag);





 if (bootverbose)
  printk("%s: Downloading Sequencer Program...",
         ahc_name(ahc));

 error = ahc_loadseq(ahc);
 if (error != 0)
  return (error);

 if ((ahc->features & AHC_ULTRA2) != 0) {
  int wait;
  for (wait = 5000;
       (ahc_inb(ahc, SBLKCTL) & (ENAB40|ENAB20)) == 0 && wait;
       wait--)
   ahc_delay(100);
 }
 ahc_restart(ahc);
 return (0);
}
