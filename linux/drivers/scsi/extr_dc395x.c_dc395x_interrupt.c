
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct AdapterCtlBlk {TYPE_1__* active_dcb; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ active_srb; int flag; } ;


 int ABORTXFER ;
 int ABORT_DEV_ ;
 int CLRXFIFO ;
 int DC395x_read16 (struct AdapterCtlBlk*,int ) ;
 int DC395x_read8 (struct AdapterCtlBlk*,int ) ;
 int DC395x_write8 (struct AdapterCtlBlk*,int ,int) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int KERN_INFO ;
 int SCSIINTERRUPT ;
 int TRM_S1040_DMA_CONTROL ;
 int TRM_S1040_DMA_STATUS ;
 int TRM_S1040_SCSI_STATUS ;
 int dc395x_handle_interrupt (struct AdapterCtlBlk*,int) ;
 int dprintkl (int ,char*,...) ;
 int enable_msgout_abort (struct AdapterCtlBlk*,scalar_t__) ;

__attribute__((used)) static irqreturn_t dc395x_interrupt(int irq, void *dev_id)
{
 struct AdapterCtlBlk *acb = dev_id;
 u16 scsi_status;
 u8 dma_status;
 irqreturn_t handled = IRQ_NONE;




 scsi_status = DC395x_read16(acb, TRM_S1040_SCSI_STATUS);
 dma_status = DC395x_read8(acb, TRM_S1040_DMA_STATUS);
 if (scsi_status & SCSIINTERRUPT) {

  dc395x_handle_interrupt(acb, scsi_status);
  handled = IRQ_HANDLED;
 }
 else if (dma_status & 0x20) {

  dprintkl(KERN_INFO, "Interrupt from DMA engine: 0x%02x!\n", dma_status);
  dprintkl(KERN_INFO, "Ignoring DMA error (probably a bad thing) ...\n");
  acb = ((void*)0);

  handled = IRQ_HANDLED;
 }

 return handled;
}
