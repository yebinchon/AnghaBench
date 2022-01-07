
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct AdapterCtlBlk {int sel_timeout; int config; TYPE_1__* scsi_host; } ;
struct TYPE_2__ {int this_id; } ;


 int BLOCKRST ;
 int DC395x_read16 (struct AdapterCtlBlk*,int ) ;
 int DC395x_read8 (struct AdapterCtlBlk*,int ) ;
 int DC395x_write16 (struct AdapterCtlBlk*,int ,int) ;
 int DC395x_write8 (struct AdapterCtlBlk*,int ,int) ;
 int DMA_ENHANCE ;
 int DMA_FIFO_CTRL ;
 int DMA_FIFO_HALF_HALF ;
 int EN_DMAXFERERROR ;
 int EN_SCSIINTR ;
 int HCC_PARITY ;
 int INITIATOR ;
 int PARITYCHECK ;
 int PHASELATCH ;
 int TRM_S1040_DMA_CONFIG ;
 int TRM_S1040_DMA_INTEN ;
 int TRM_S1040_GEN_CONTROL ;
 int TRM_S1040_SCSI_CONFIG0 ;
 int TRM_S1040_SCSI_CONFIG1 ;
 int TRM_S1040_SCSI_HOSTID ;
 int TRM_S1040_SCSI_INTEN ;
 int TRM_S1040_SCSI_INTSTATUS ;
 int TRM_S1040_SCSI_OFFSET ;
 int TRM_S1040_SCSI_TIMEOUT ;

__attribute__((used)) static void set_basic_config(struct AdapterCtlBlk *acb)
{
 u8 bval;
 u16 wval;
 DC395x_write8(acb, TRM_S1040_SCSI_TIMEOUT, acb->sel_timeout);
 if (acb->config & HCC_PARITY)
  bval = PHASELATCH | INITIATOR | BLOCKRST | PARITYCHECK;
 else
  bval = PHASELATCH | INITIATOR | BLOCKRST;

 DC395x_write8(acb, TRM_S1040_SCSI_CONFIG0, bval);


 DC395x_write8(acb, TRM_S1040_SCSI_CONFIG1, 0x03);

 DC395x_write8(acb, TRM_S1040_SCSI_HOSTID, acb->scsi_host->this_id);

 DC395x_write8(acb, TRM_S1040_SCSI_OFFSET, 0x00);

 wval = DC395x_read16(acb, TRM_S1040_GEN_CONTROL) & 0x7F;
 DC395x_write16(acb, TRM_S1040_GEN_CONTROL, wval);

 wval = DC395x_read16(acb, TRM_S1040_DMA_CONFIG) & ~DMA_FIFO_CTRL;
 wval |=
     DMA_FIFO_HALF_HALF | DMA_ENHANCE ;
 DC395x_write16(acb, TRM_S1040_DMA_CONFIG, wval);

 DC395x_read8(acb, TRM_S1040_SCSI_INTSTATUS);

 DC395x_write8(acb, TRM_S1040_SCSI_INTEN, 0x7F);
 DC395x_write8(acb, TRM_S1040_DMA_INTEN, EN_SCSIINTR | EN_DMAXFERERROR

        );
}
