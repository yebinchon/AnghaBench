
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct status_pkt {int residual_datacnt; int residual_sg_ptr; } ;
struct scb {int flags; struct hardware_scb* hscb; } ;
struct TYPE_2__ {struct status_pkt status; } ;
struct hardware_scb {TYPE_1__ shared_data; int sgptr; } ;
struct ahc_softc {int dummy; } ;
struct ahc_dma_seg {int len; } ;


 int AHC_DMA_LAST_SEG ;
 int AHC_SG_LEN_MASK ;
 int AHC_SHOW_MISC ;
 int SCB_SENSE ;
 int SG_FULL_RESID ;
 int SG_LIST_NULL ;
 int SG_PTR_MASK ;
 int SG_RESID_VALID ;
 int ahc_debug ;
 int ahc_get_transfer_length (struct scb*) ;
 int ahc_le32toh (int ) ;
 int ahc_print_path (struct ahc_softc*,struct scb*) ;
 int ahc_set_residual (struct scb*,int) ;
 int ahc_set_sense_residual (struct scb*,int) ;
 struct ahc_dma_seg* ahc_sg_bus_to_virt (struct scb*,int) ;
 int panic (char*,int) ;
 int printk (char*,char*,int) ;

__attribute__((used)) static void
ahc_calc_residual(struct ahc_softc *ahc, struct scb *scb)
{
 struct hardware_scb *hscb;
 struct status_pkt *spkt;
 uint32_t sgptr;
 uint32_t resid_sgptr;
 uint32_t resid;
 hscb = scb->hscb;
 sgptr = ahc_le32toh(hscb->sgptr);
 if ((sgptr & SG_RESID_VALID) == 0)

  return;
 sgptr &= ~SG_RESID_VALID;

 if ((sgptr & SG_LIST_NULL) != 0)

  return;

 spkt = &hscb->shared_data.status;
 resid_sgptr = ahc_le32toh(spkt->residual_sg_ptr);
 if ((sgptr & SG_FULL_RESID) != 0) {

  resid = ahc_get_transfer_length(scb);
 } else if ((resid_sgptr & SG_LIST_NULL) != 0) {

  return;
 } else if ((resid_sgptr & ~SG_PTR_MASK) != 0) {
  panic("Bogus resid sgptr value 0x%x\n", resid_sgptr);
 } else {
  struct ahc_dma_seg *sg;





  resid = ahc_le32toh(spkt->residual_datacnt) & AHC_SG_LEN_MASK;
  sg = ahc_sg_bus_to_virt(scb, resid_sgptr & SG_PTR_MASK);


  sg--;






  while ((ahc_le32toh(sg->len) & AHC_DMA_LAST_SEG) == 0) {
   sg++;
   resid += ahc_le32toh(sg->len) & AHC_SG_LEN_MASK;
  }
 }
 if ((scb->flags & SCB_SENSE) == 0)
  ahc_set_residual(scb, resid);
 else
  ahc_set_sense_residual(scb, resid);
}
