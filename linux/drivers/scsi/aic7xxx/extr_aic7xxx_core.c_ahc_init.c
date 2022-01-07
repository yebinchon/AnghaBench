
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_int ;
struct target_cmd {scalar_t__ cmd_valid; } ;
struct scb {int dummy; } ;
struct hardware_scb {int dummy; } ;
struct ahc_tmode_tstate {scalar_t__ ultraenb; } ;
struct ahc_softc {int flags; int features; int our_id; int our_id_b; int unit; int user_discenable; int user_tagenable; int (* bus_chip_init ) (struct ahc_softc*) ;TYPE_1__* scb_data; int init_level; int * qoutfifo; int * qinfifo; struct target_cmd* targetcmds; scalar_t__ shared_data_busaddr; scalar_t__ dma_bug_buf; int shared_data_dmamap; int shared_data_dmat; int parent_dmat; } ;
struct TYPE_9__ {int protocol_version; int transport_version; } ;
struct TYPE_8__ {int protocol_version; int transport_version; } ;
struct TYPE_7__ {scalar_t__ period; int protocol_version; int transport_version; void* width; void* offset; int ppr_options; } ;
struct ahc_initiator_tinfo {TYPE_4__ curr; TYPE_3__ goal; TYPE_2__ user; } ;
struct ahc_dma_seg {int dummy; } ;
struct TYPE_10__ {scalar_t__ period; } ;
struct TYPE_6__ {scalar_t__ maxhscbs; } ;


 int AHC_DEBUG_SEQUENCER ;
 int AHC_DT ;
 int AHC_EXTENDED_TRANS_A ;
 int AHC_EXTENDED_TRANS_B ;
 int AHC_INITIATORROLE ;
 int AHC_MORE_SRAM ;
 int AHC_PAGESCBS ;
 int AHC_RESET_BUS_A ;
 int AHC_RESET_BUS_B ;
 scalar_t__ AHC_SCB_MAX_ALLOC ;
 int AHC_SEQUENCER_DEBUG ;
 int AHC_SHOW_MISC ;
 int AHC_SYNCRATE_DT ;
 int AHC_SYNCRATE_FAST ;
 int AHC_SYNCRATE_ULTRA ;
 int AHC_SYNCRATE_ULTRA2 ;
 int AHC_TARGETMODE ;
 int AHC_TERM_ENB_A ;
 int AHC_TERM_ENB_B ;
 int AHC_TMODE_CMDS ;
 int AHC_TMODE_ENABLE ;
 int AHC_TWIN ;
 int AHC_ULTRA ;
 int AHC_ULTRA2 ;
 int AHC_USEDEFAULTS ;
 int AHC_WIDE ;
 int ALL_TARGETS_MASK ;
 int BUS_DMASYNC_PREREAD ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 scalar_t__ BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int CLRBRKADRINT ;
 int CLRINT ;
 int CLRPARERR ;
 int DISC_DSB ;
 int ENOMEM ;
 void* MAX_OFFSET ;
 int MAX_OFFSET_ULTRA2 ;
 int MSG_EXT_PPR_DT_REQ ;
 void* MSG_EXT_WDTR_BUS_16_BIT ;
 int RESET_SCSI ;
 int SCSICONF ;
 int SOFS ;
 int SXFR ;
 int SXFR_ULTRA2 ;
 int TARG_OFFSET ;
 int TARG_SCSIRATE ;
 int ULTRA_ENB ;
 int WIDEXFER ;
 int * ahc_alloc_tstate (struct ahc_softc*,int,char) ;
 int ahc_debug ;
 scalar_t__ ahc_dma_tag_create (struct ahc_softc*,int ,int,scalar_t__,scalar_t__,int ,int *,int *,size_t,int,int ,int ,int *) ;
 int ahc_dmamap_cb ;
 int ahc_dmamap_load (struct ahc_softc*,int ,int ,int *,size_t,int ,scalar_t__*,int ) ;
 scalar_t__ ahc_dmamem_alloc (struct ahc_softc*,int ,void**,int ,int *) ;
 struct ahc_initiator_tinfo* ahc_fetch_transinfo (struct ahc_softc*,char,int,int,struct ahc_tmode_tstate**) ;
 void* ahc_find_period (struct ahc_softc*,int,int) ;
 int ahc_inb (struct ahc_softc*,int) ;
 scalar_t__ ahc_init_scbdata (struct ahc_softc*) ;
 int ahc_name (struct ahc_softc*) ;
 int ahc_outb (struct ahc_softc*,int ,int ) ;
 int ahc_sync_tqinfifo (struct ahc_softc*,int ) ;
 TYPE_5__* ahc_syncrates ;
 int memset (struct ahc_initiator_tinfo*,int ,int) ;
 int printk (char*,...) ;
 int stub1 (struct ahc_softc*) ;

int
ahc_init(struct ahc_softc *ahc)
{
 int max_targ;
 u_int i;
 u_int scsi_conf;
 u_int ultraenb;
 u_int discenable;
 u_int tagenable;
 size_t driver_data_size;
 max_targ = 15;




 if ((ahc->flags & AHC_USEDEFAULTS) != 0)
  ahc->our_id = ahc->our_id_b = 7;




 ahc->flags |= AHC_INITIATORROLE;




 if ((AHC_TMODE_ENABLE & (0x1 << ahc->unit)) == 0)
  ahc->features &= ~AHC_TARGETMODE;

 ahc->init_level++;
 driver_data_size = 2 * 256 * sizeof(uint8_t);
 if ((ahc->features & AHC_TARGETMODE) != 0)
  driver_data_size += AHC_TMODE_CMDS * sizeof(struct target_cmd)
     + 1;
 if (ahc_dma_tag_create(ahc, ahc->parent_dmat, 1,
                      BUS_SPACE_MAXADDR_32BIT + 1,
                     BUS_SPACE_MAXADDR_32BIT,
                      BUS_SPACE_MAXADDR,
                    ((void*)0), ((void*)0),
          driver_data_size,
                       1,
                      BUS_SPACE_MAXSIZE_32BIT,
                   0, &ahc->shared_data_dmat) != 0) {
  return (ENOMEM);
 }

 ahc->init_level++;


 if (ahc_dmamem_alloc(ahc, ahc->shared_data_dmat,
        (void **)&ahc->qoutfifo,
        BUS_DMA_NOWAIT, &ahc->shared_data_dmamap) != 0) {
  return (ENOMEM);
 }

 ahc->init_level++;


 ahc_dmamap_load(ahc, ahc->shared_data_dmat, ahc->shared_data_dmamap,
   ahc->qoutfifo, driver_data_size, ahc_dmamap_cb,
   &ahc->shared_data_busaddr, 0);

 if ((ahc->features & AHC_TARGETMODE) != 0) {
  ahc->targetcmds = (struct target_cmd *)ahc->qoutfifo;
  ahc->qoutfifo = (uint8_t *)&ahc->targetcmds[AHC_TMODE_CMDS];
  ahc->dma_bug_buf = ahc->shared_data_busaddr
     + driver_data_size - 1;

  for (i = 0; i < AHC_TMODE_CMDS; i++)
   ahc->targetcmds[i].cmd_valid = 0;
  ahc_sync_tqinfifo(ahc, BUS_DMASYNC_PREREAD);
  ahc->qoutfifo = (uint8_t *)&ahc->targetcmds[256];
 }
 ahc->qinfifo = &ahc->qoutfifo[256];

 ahc->init_level++;


 if (ahc->scb_data->maxhscbs == 0)
  if (ahc_init_scbdata(ahc) != 0)
   return (ENOMEM);






 if (ahc_alloc_tstate(ahc, ahc->our_id, 'A') == ((void*)0)) {
  printk("%s: unable to allocate ahc_tmode_tstate.  "
         "Failing attach\n", ahc_name(ahc));
  return (ENOMEM);
 }

 if ((ahc->features & AHC_TWIN) != 0) {
  if (ahc_alloc_tstate(ahc, ahc->our_id_b, 'B') == ((void*)0)) {
   printk("%s: unable to allocate ahc_tmode_tstate.  "
          "Failing attach\n", ahc_name(ahc));
   return (ENOMEM);
  }
 }

 if (ahc->scb_data->maxhscbs < AHC_SCB_MAX_ALLOC) {
  ahc->flags |= AHC_PAGESCBS;
 } else {
  ahc->flags &= ~AHC_PAGESCBS;
 }
 if (ahc->features & AHC_TWIN) {
  scsi_conf = ahc_inb(ahc, SCSICONF + 1);
  if ((scsi_conf & RESET_SCSI) != 0
   && (ahc->flags & AHC_INITIATORROLE) != 0)
   ahc->flags |= AHC_RESET_BUS_B;
 }

 scsi_conf = ahc_inb(ahc, SCSICONF);
 if ((scsi_conf & RESET_SCSI) != 0
  && (ahc->flags & AHC_INITIATORROLE) != 0)
  ahc->flags |= AHC_RESET_BUS_A;

 ultraenb = 0;
 tagenable = ALL_TARGETS_MASK;


 if ((ahc->flags & AHC_USEDEFAULTS) != 0) {
  printk("%s: Host Adapter Bios disabled.  Using default SCSI "
   "device parameters\n", ahc_name(ahc));
  ahc->flags |= AHC_EXTENDED_TRANS_A|AHC_EXTENDED_TRANS_B|
         AHC_TERM_ENB_A|AHC_TERM_ENB_B;
  discenable = ALL_TARGETS_MASK;
  if ((ahc->features & AHC_ULTRA) != 0)
   ultraenb = ALL_TARGETS_MASK;
 } else {
  discenable = ~((ahc_inb(ahc, DISC_DSB + 1) << 8)
      | ahc_inb(ahc, DISC_DSB));
  if ((ahc->features & (AHC_ULTRA|AHC_ULTRA2)) != 0)
   ultraenb = (ahc_inb(ahc, ULTRA_ENB + 1) << 8)
          | ahc_inb(ahc, ULTRA_ENB);
 }

 if ((ahc->features & (AHC_WIDE|AHC_TWIN)) == 0)
  max_targ = 7;

 for (i = 0; i <= max_targ; i++) {
  struct ahc_initiator_tinfo *tinfo;
  struct ahc_tmode_tstate *tstate;
  u_int our_id;
  u_int target_id;
  char channel;

  channel = 'A';
  our_id = ahc->our_id;
  target_id = i;
  if (i > 7 && (ahc->features & AHC_TWIN) != 0) {
   channel = 'B';
   our_id = ahc->our_id_b;
   target_id = i % 8;
  }
  tinfo = ahc_fetch_transinfo(ahc, channel, our_id,
         target_id, &tstate);

  memset(tinfo, 0, sizeof(*tinfo));
  if (ahc->flags & AHC_USEDEFAULTS) {
   if ((ahc->features & AHC_WIDE) != 0)
    tinfo->user.width = MSG_EXT_WDTR_BUS_16_BIT;





   tinfo->user.period = ahc_syncrates->period;
   tinfo->user.offset = MAX_OFFSET;
  } else {
   u_int scsirate;
   uint16_t mask;


   scsirate = ahc_inb(ahc, TARG_SCSIRATE + i);
   mask = (0x01 << i);
   if ((ahc->features & AHC_ULTRA2) != 0) {
    u_int offset;
    u_int maxsync;

    if ((scsirate & SOFS) == 0x0F) {




     scsirate = (scsirate & SXFR) >> 4
       | (ultraenb & mask)
        ? 0x08 : 0x0
       | (scsirate & WIDEXFER);
     offset = MAX_OFFSET_ULTRA2;
    } else
     offset = ahc_inb(ahc, TARG_OFFSET + i);
    if ((scsirate & ~WIDEXFER) == 0 && offset != 0)

     scsirate |= 0x1c;
    maxsync = AHC_SYNCRATE_ULTRA2;
    if ((ahc->features & AHC_DT) != 0)
     maxsync = AHC_SYNCRATE_DT;
    tinfo->user.period =
        ahc_find_period(ahc, scsirate, maxsync);
    if (offset == 0)
     tinfo->user.period = 0;
    else
     tinfo->user.offset = MAX_OFFSET;
    if ((scsirate & SXFR_ULTRA2) <= 8
     && (ahc->features & AHC_DT) != 0)
     tinfo->user.ppr_options =
         MSG_EXT_PPR_DT_REQ;
   } else if ((scsirate & SOFS) != 0) {
    if ((scsirate & SXFR) == 0x40
     && (ultraenb & mask) != 0) {

     scsirate &= ~SXFR;
      ultraenb &= ~mask;
    }
    tinfo->user.period =
        ahc_find_period(ahc, scsirate,
          (ultraenb & mask)
         ? AHC_SYNCRATE_ULTRA
         : AHC_SYNCRATE_FAST);
    if (tinfo->user.period != 0)
     tinfo->user.offset = MAX_OFFSET;
   }
   if (tinfo->user.period == 0)
    tinfo->user.offset = 0;
   if ((scsirate & WIDEXFER) != 0
    && (ahc->features & AHC_WIDE) != 0)
    tinfo->user.width = MSG_EXT_WDTR_BUS_16_BIT;
   tinfo->user.protocol_version = 4;
   if ((ahc->features & AHC_DT) != 0)
    tinfo->user.transport_version = 3;
   else
    tinfo->user.transport_version = 2;
   tinfo->goal.protocol_version = 2;
   tinfo->goal.transport_version = 2;
   tinfo->curr.protocol_version = 2;
   tinfo->curr.transport_version = 2;
  }
  tstate->ultraenb = 0;
 }
 ahc->user_discenable = discenable;
 ahc->user_tagenable = tagenable;

 return (ahc->bus_chip_init(ahc));
}
