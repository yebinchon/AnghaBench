
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_int ;
struct scb {int dummy; } ;
struct ahd_softc {int flags; int features; } ;
struct ahd_dma_seg {int len; int addr; } ;
struct ahd_dma64_seg {int addr; int len; } ;


 int AHD_64BIT_ADDRESSING ;
 int AHD_DMA_LAST_SEG ;
 int AHD_NEW_DFCNTRL_OPTS ;
 int AHD_SG_HIGH_ADDR_MASK ;
 int AHD_SG_LEN_MASK ;
 scalar_t__ CCSGCTL ;
 int CFG4DATA ;
 int CLRCFG4DATA ;
 int CLRCHN ;
 int CLRSAVEPTRS ;
 scalar_t__ CLRSEQINTSRC ;
 scalar_t__ DFCNTRL ;
 scalar_t__ DFFSXFRCTL ;
 scalar_t__ DFSTATUS ;
 int DIRECTION ;
 int ENSAVEPTRS ;
 int FETCH_INPROG ;
 int FIFOEMP ;
 int FIFOFLUSH ;
 int HADDR ;
 scalar_t__ HCNT ;
 int HDMAEN ;
 int HDMAENACK ;
 int INVALID_ADDR ;
 int LAST_SEG ;
 int LAST_SEG_DONE ;
 int LOADING_NEEDED ;
 scalar_t__ LONGJMP_ADDR ;
 int PRELOADEN ;
 int PRELOAD_AVAIL ;
 int SAVEPTRS ;
 scalar_t__ SCB_DATACNT ;
 int SCB_DATAPTR ;
 scalar_t__ SCB_FIFO_USE_COUNT ;
 scalar_t__ SCB_RESIDUAL_DATACNT ;
 scalar_t__ SCB_RESIDUAL_SGPTR ;
 scalar_t__ SCB_SGPTR ;
 int SCSIEN ;
 int SCSIENWRDIS ;
 scalar_t__ SEQIMODE ;
 scalar_t__ SEQINTSRC ;
 int SG_ADDR_MASK ;
 scalar_t__ SG_CACHE_PRE ;
 scalar_t__ SG_CACHE_SHADOW ;
 int SG_FULL_RESID ;
 int SG_LIST_NULL ;
 int SG_PTR_MASK ;
 scalar_t__ SG_STATE ;
 int SHADDR ;
 int SHCNT ;
 int ahd_inb (struct ahd_softc*,scalar_t__) ;
 int ahd_inb_scbram (struct ahd_softc*,scalar_t__) ;
 int ahd_inl (struct ahd_softc*,int ) ;
 int ahd_inl_scbram (struct ahd_softc*,scalar_t__) ;
 int ahd_inq (struct ahd_softc*,int ) ;
 int ahd_inq_scbram (struct ahd_softc*,int ) ;
 int ahd_outb (struct ahd_softc*,scalar_t__,int) ;
 int ahd_outl (struct ahd_softc*,scalar_t__,int) ;
 int ahd_outq (struct ahd_softc*,int ,int) ;
 int ahd_outw (struct ahd_softc*,scalar_t__,int ) ;
 void* ahd_sg_bus_to_virt (struct ahd_softc*,struct scb*,int) ;

__attribute__((used)) static void
ahd_run_data_fifo(struct ahd_softc *ahd, struct scb *scb)
{
 u_int seqintsrc;

 seqintsrc = ahd_inb(ahd, SEQINTSRC);
 if ((seqintsrc & CFG4DATA) != 0) {
  uint32_t datacnt;
  uint32_t sgptr;




  sgptr = ahd_inl_scbram(ahd, SCB_SGPTR) & ~SG_FULL_RESID;
  ahd_outb(ahd, SCB_SGPTR, sgptr);




  datacnt = ahd_inl_scbram(ahd, SCB_DATACNT);
  if ((datacnt & AHD_DMA_LAST_SEG) != 0) {
   sgptr |= LAST_SEG;
   ahd_outb(ahd, SG_STATE, 0);
  } else
   ahd_outb(ahd, SG_STATE, LOADING_NEEDED);
  ahd_outq(ahd, HADDR, ahd_inq_scbram(ahd, SCB_DATAPTR));
  ahd_outl(ahd, HCNT, datacnt & AHD_SG_LEN_MASK);
  ahd_outb(ahd, SG_CACHE_PRE, sgptr);
  ahd_outb(ahd, DFCNTRL, PRELOADEN|SCSIEN|HDMAEN);




  ahd_outb(ahd, SCB_RESIDUAL_DATACNT+3, datacnt >> 24);
  ahd_outl(ahd, SCB_RESIDUAL_SGPTR, sgptr & SG_PTR_MASK);




  ahd_outb(ahd, SCB_FIFO_USE_COUNT,
    ahd_inb_scbram(ahd, SCB_FIFO_USE_COUNT) + 1);




  ahd_outw(ahd, LONGJMP_ADDR, 0);





  ahd_outb(ahd, CLRSEQINTSRC, CLRCFG4DATA);
 } else if ((seqintsrc & SAVEPTRS) != 0) {
  uint32_t sgptr;
  uint32_t resid;

  if ((ahd_inb(ahd, LONGJMP_ADDR+1)&INVALID_ADDR) != 0) {





   goto clrchn;
  }





  if ((ahd_inb(ahd, SG_STATE) & FETCH_INPROG) != 0)
   ahd_outb(ahd, CCSGCTL, 0);
  ahd_outb(ahd, SG_STATE, 0);





  ahd_outb(ahd, DFCNTRL, ahd_inb(ahd, DFCNTRL) | FIFOFLUSH);




  sgptr = ahd_inl_scbram(ahd, SCB_RESIDUAL_SGPTR);
  resid = ahd_inl(ahd, SHCNT);
  resid |= ahd_inb_scbram(ahd, SCB_RESIDUAL_DATACNT+3) << 24;
  ahd_outl(ahd, SCB_RESIDUAL_DATACNT, resid);
  if ((ahd_inb(ahd, SG_CACHE_SHADOW) & LAST_SEG) == 0) {







   if ((ahd_inb(ahd, SG_CACHE_SHADOW) & 0x80) != 0
    && (sgptr & 0x80) == 0)
    sgptr -= 0x100;
   sgptr &= ~0xFF;
   sgptr |= ahd_inb(ahd, SG_CACHE_SHADOW)
          & SG_ADDR_MASK;
   ahd_outl(ahd, SCB_RESIDUAL_SGPTR, sgptr);
   ahd_outb(ahd, SCB_RESIDUAL_DATACNT + 3, 0);
  } else if ((resid & AHD_SG_LEN_MASK) == 0) {
   ahd_outb(ahd, SCB_RESIDUAL_SGPTR,
     sgptr | SG_LIST_NULL);
  }



  ahd_outq(ahd, SCB_DATAPTR, ahd_inq(ahd, SHADDR));
  ahd_outl(ahd, SCB_DATACNT, resid);
  ahd_outl(ahd, SCB_SGPTR, sgptr);
  ahd_outb(ahd, CLRSEQINTSRC, CLRSAVEPTRS);
  ahd_outb(ahd, SEQIMODE,
    ahd_inb(ahd, SEQIMODE) | ENSAVEPTRS);




  if ((ahd_inb(ahd, DFCNTRL) & DIRECTION) != 0)
   goto clrchn;
 } else if ((ahd_inb(ahd, SG_STATE) & LOADING_NEEDED) != 0) {
  uint32_t sgptr;
  uint64_t data_addr;
  uint32_t data_len;
  u_int dfcntrl;






  if ((ahd_inb(ahd, SG_STATE) & FETCH_INPROG) != 0) {
   ahd_outb(ahd, CCSGCTL, 0);
   ahd_outb(ahd, SG_STATE, LOADING_NEEDED);
  }







  if ((ahd_inb(ahd, DFSTATUS) & PRELOAD_AVAIL) != 0
   && (ahd_inb(ahd, DFCNTRL) & HDMAENACK) != 0) {





   sgptr = ahd_inl_scbram(ahd, SCB_RESIDUAL_SGPTR);
   sgptr &= SG_PTR_MASK;
   if ((ahd->flags & AHD_64BIT_ADDRESSING) != 0) {
    struct ahd_dma64_seg *sg;

    sg = ahd_sg_bus_to_virt(ahd, scb, sgptr);
    data_addr = sg->addr;
    data_len = sg->len;
    sgptr += sizeof(*sg);
   } else {
    struct ahd_dma_seg *sg;

    sg = ahd_sg_bus_to_virt(ahd, scb, sgptr);
    data_addr = sg->len & AHD_SG_HIGH_ADDR_MASK;
    data_addr <<= 8;
    data_addr |= sg->addr;
    data_len = sg->len;
    sgptr += sizeof(*sg);
   }




   ahd_outb(ahd, SCB_RESIDUAL_DATACNT+3, data_len >> 24);
   ahd_outl(ahd, SCB_RESIDUAL_SGPTR, sgptr);




   if (data_len & AHD_DMA_LAST_SEG) {
    sgptr |= LAST_SEG;
    ahd_outb(ahd, SG_STATE, 0);
   }
   ahd_outq(ahd, HADDR, data_addr);
   ahd_outl(ahd, HCNT, data_len & AHD_SG_LEN_MASK);
   ahd_outb(ahd, SG_CACHE_PRE, sgptr & 0xFF);




   dfcntrl = ahd_inb(ahd, DFCNTRL)|PRELOADEN|HDMAEN;
   if ((ahd->features & AHD_NEW_DFCNTRL_OPTS) != 0) {





    dfcntrl |= SCSIENWRDIS;
   }
   ahd_outb(ahd, DFCNTRL, dfcntrl);
  }
 } else if ((ahd_inb(ahd, SG_CACHE_SHADOW) & LAST_SEG_DONE) != 0) {





  ahd_outb(ahd, SCB_SGPTR,
    ahd_inb_scbram(ahd, SCB_SGPTR) | SG_LIST_NULL);
  goto clrchn;
 } else if ((ahd_inb(ahd, DFSTATUS) & FIFOEMP) != 0) {
clrchn:





  ahd_outb(ahd, LONGJMP_ADDR + 1, INVALID_ADDR);
  ahd_outb(ahd, SCB_FIFO_USE_COUNT,
    ahd_inb_scbram(ahd, SCB_FIFO_USE_COUNT) - 1);
  ahd_outb(ahd, DFFSXFRCTL, CLRCHN);
 }
}
