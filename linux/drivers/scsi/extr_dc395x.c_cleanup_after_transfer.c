
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ScsiReqBlk {int dummy; } ;
struct AdapterCtlBlk {int dummy; } ;


 int CLRXFIFO ;
 int DC395x_read16 (struct AdapterCtlBlk*,int ) ;
 int DC395x_read8 (struct AdapterCtlBlk*,int ) ;
 int DC395x_write16 (struct AdapterCtlBlk*,int ,int ) ;
 int DC395x_write8 (struct AdapterCtlBlk*,int ,int ) ;
 int DO_DATALATCH ;
 int TRM_S1040_DMA_COMMAND ;
 int TRM_S1040_DMA_CONTROL ;
 int TRM_S1040_DMA_FIFOSTAT ;
 int TRM_S1040_SCSI_CONTROL ;
 int TRM_S1040_SCSI_FIFOCNT ;
 int clear_fifo (struct AdapterCtlBlk*,char*) ;

__attribute__((used)) static void cleanup_after_transfer(struct AdapterCtlBlk *acb,
  struct ScsiReqBlk *srb)
{

 if (DC395x_read16(acb, TRM_S1040_DMA_COMMAND) & 0x0001) {
  if (!(DC395x_read8(acb, TRM_S1040_SCSI_FIFOCNT) & 0x40))
   clear_fifo(acb, "cleanup/in");
  if (!(DC395x_read8(acb, TRM_S1040_DMA_FIFOSTAT) & 0x80))
   DC395x_write8(acb, TRM_S1040_DMA_CONTROL, CLRXFIFO);
 } else {
  if (!(DC395x_read8(acb, TRM_S1040_DMA_FIFOSTAT) & 0x80))
   DC395x_write8(acb, TRM_S1040_DMA_CONTROL, CLRXFIFO);
  if (!(DC395x_read8(acb, TRM_S1040_SCSI_FIFOCNT) & 0x40))
   clear_fifo(acb, "cleanup/out");
 }
 DC395x_write16(acb, TRM_S1040_SCSI_CONTROL, DO_DATALATCH);
}
