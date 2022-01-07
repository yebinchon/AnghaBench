
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ScsiReqBlk {int total_xfer_length; int sg_index; int sg_count; int sg_bus_addr; size_t request_length; int state; int status; int adapter_status; struct DeviceCtlBlk* dcb; TYPE_3__* cmd; TYPE_2__* segment_x; } ;
struct SGentry {int dummy; } ;
struct DeviceCtlBlk {int sync_period; } ;
struct AdapterCtlBlk {struct ScsiReqBlk* tmp_srb; } ;
struct TYPE_8__ {TYPE_1__* device; } ;
struct TYPE_7__ {int address; int length; } ;
struct TYPE_6__ {scalar_t__ lun; int id; } ;


 int CFG2_WIDEFIFO ;
 int CLRXFIFO ;
 int DBG_0 ;
 int DBG_PIO ;
 int DC395x_LASTPIO ;
 int DC395x_read8 (struct AdapterCtlBlk*,int ) ;
 int DC395x_write16 (struct AdapterCtlBlk*,int ,int) ;
 int DC395x_write32 (struct AdapterCtlBlk*,int ,int) ;
 int DC395x_write8 (struct AdapterCtlBlk*,int ,int) ;
 int DMACMD_DIR ;
 int DMACMD_SG ;
 int DO_DATALATCH ;
 int H_OVER_UNDER_RUN ;
 int KERN_DEBUG ;
 int KERN_ERR ;
 int OVER_RUN ;
 int SCMD_DMA_IN ;
 int SCMD_DMA_OUT ;
 int SCMD_FIFO_IN ;
 int SCMD_FIFO_OUT ;
 int SRB_DATA_XFER ;
 int SRB_XFERPAD ;
 int TRM_S1040_DMA_COMMAND ;
 int TRM_S1040_DMA_CONTROL ;
 int TRM_S1040_DMA_STATUS ;
 int TRM_S1040_DMA_XCNT ;
 int TRM_S1040_DMA_XHIGHADDR ;
 int TRM_S1040_DMA_XLOWADDR ;
 int TRM_S1040_SCSI_COMMAND ;
 int TRM_S1040_SCSI_CONFIG2 ;
 int TRM_S1040_SCSI_CONTROL ;
 int TRM_S1040_SCSI_COUNTER ;
 int TRM_S1040_SCSI_FIFO ;
 int WIDE_SYNC ;
 int XFERPENDING ;
 scalar_t__ debug_enabled (int ) ;
 int dprintkdbg (int ,char*,TYPE_3__*,int ,int,char,int,int,int) ;
 int dprintkl (int ,char*) ;
 int dump_register_info (struct AdapterCtlBlk*,struct DeviceCtlBlk*,struct ScsiReqBlk*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int printk (char*,...) ;
 unsigned char* scsi_kmap_atomic_sg (int ,int,size_t*,size_t*) ;
 int scsi_kunmap_atomic_sg (unsigned char*) ;
 scalar_t__ scsi_sg_count (TYPE_3__*) ;
 int scsi_sglist (TYPE_3__*) ;
 int sg_subtract_one (struct ScsiReqBlk*) ;

__attribute__((used)) static void data_io_transfer(struct AdapterCtlBlk *acb,
  struct ScsiReqBlk *srb, u16 io_dir)
{
 struct DeviceCtlBlk *dcb = srb->dcb;
 u8 bval;
 dprintkdbg(DBG_0,
  "data_io_transfer: (0x%p) <%02i-%i> %c len=%i, sg=(%i/%i)\n",
  srb->cmd, srb->cmd->device->id, (u8)srb->cmd->device->lun,
  ((io_dir & DMACMD_DIR) ? 'r' : 'w'),
  srb->total_xfer_length, srb->sg_index, srb->sg_count);
 if (srb == acb->tmp_srb)
  dprintkl(KERN_ERR, "data_io_transfer: Using tmp_srb!\n");
 if (srb->sg_index >= srb->sg_count) {

  return;
 }

 if (srb->total_xfer_length > DC395x_LASTPIO) {
  u8 dma_status = DC395x_read8(acb, TRM_S1040_DMA_STATUS);




  if (dma_status & XFERPENDING) {
   dprintkl(KERN_DEBUG, "data_io_transfer: Xfer pending! "
    "Expect trouble!\n");
   dump_register_info(acb, dcb, srb);
   DC395x_write8(acb, TRM_S1040_DMA_CONTROL, CLRXFIFO);
  }





  srb->state |= SRB_DATA_XFER;
  DC395x_write32(acb, TRM_S1040_DMA_XHIGHADDR, 0);
  if (scsi_sg_count(srb->cmd)) {
   io_dir |= DMACMD_SG;
   DC395x_write32(acb, TRM_S1040_DMA_XLOWADDR,
           srb->sg_bus_addr +
           sizeof(struct SGentry) *
           srb->sg_index);

   DC395x_write32(acb, TRM_S1040_DMA_XCNT,
           ((u32)(srb->sg_count -
           srb->sg_index) << 3));
  } else {
   io_dir &= ~DMACMD_SG;
   DC395x_write32(acb, TRM_S1040_DMA_XLOWADDR,
           srb->segment_x[0].address);
   DC395x_write32(acb, TRM_S1040_DMA_XCNT,
           srb->segment_x[0].length);
  }

  DC395x_write32(acb, TRM_S1040_SCSI_COUNTER,
          srb->total_xfer_length);
  DC395x_write16(acb, TRM_S1040_SCSI_CONTROL, DO_DATALATCH);
  if (io_dir & DMACMD_DIR) {
   DC395x_write8(acb, TRM_S1040_SCSI_COMMAND,
          SCMD_DMA_IN);
   DC395x_write16(acb, TRM_S1040_DMA_COMMAND, io_dir);
  } else {
   DC395x_write16(acb, TRM_S1040_DMA_COMMAND, io_dir);
   DC395x_write8(acb, TRM_S1040_SCSI_COMMAND,
          SCMD_DMA_OUT);
  }

 }
 else {
  u8 data = 0, data2 = 0;
  if (srb->sg_count) {
   srb->adapter_status = H_OVER_UNDER_RUN;
   srb->status |= OVER_RUN;
  }





  if (dcb->sync_period & WIDE_SYNC) {
   DC395x_write32(acb, TRM_S1040_SCSI_COUNTER, 2);
   DC395x_write8(acb, TRM_S1040_SCSI_CONFIG2,
          CFG2_WIDEFIFO);
   if (io_dir & DMACMD_DIR) {
    data = DC395x_read8(acb, TRM_S1040_SCSI_FIFO);
    data2 = DC395x_read8(acb, TRM_S1040_SCSI_FIFO);
   } else {



    DC395x_write8(acb, TRM_S1040_SCSI_FIFO, 'K');
    DC395x_write8(acb, TRM_S1040_SCSI_FIFO, 'G');
   }
   DC395x_write8(acb, TRM_S1040_SCSI_CONFIG2, 0);
  } else {
   DC395x_write32(acb, TRM_S1040_SCSI_COUNTER, 1);


   if (io_dir & DMACMD_DIR)
    data = DC395x_read8(acb, TRM_S1040_SCSI_FIFO);
   else
    DC395x_write8(acb, TRM_S1040_SCSI_FIFO, 'K');
  }
  srb->state |= SRB_XFERPAD;
  DC395x_write16(acb, TRM_S1040_SCSI_CONTROL, DO_DATALATCH);

  bval = (io_dir & DMACMD_DIR) ? SCMD_FIFO_IN : SCMD_FIFO_OUT;
  DC395x_write8(acb, TRM_S1040_SCSI_COMMAND, bval);
 }
}
