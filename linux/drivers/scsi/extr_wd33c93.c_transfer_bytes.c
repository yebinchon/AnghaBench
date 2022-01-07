
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wd33c93_regs ;
typedef int uchar ;
struct TYPE_9__ {unsigned long this_residual; unsigned long ptr; scalar_t__ phase; TYPE_4__* buffer; scalar_t__ buffers_residual; } ;
struct scsi_cmnd {TYPE_3__ SCp; TYPE_2__* device; } ;
struct WD33C93_hostdata {int* sync_xfer; int dma_mode; scalar_t__ level2; int dma; int state; int dma_cnt; int pio_cnt; scalar_t__ (* dma_setup ) (struct scsi_cmnd*,int) ;scalar_t__ no_dma; } ;
struct TYPE_10__ {unsigned long length; } ;
struct TYPE_8__ {size_t id; TYPE_1__* host; } ;
struct TYPE_7__ {scalar_t__ hostdata; } ;


 int CTRL_EDI ;
 int CTRL_IDI ;
 int D_DMA_RUNNING ;
 scalar_t__ L2_BASIC ;
 scalar_t__ L2_DATA ;
 int S_RUNNING_LEVEL2 ;
 int WD_CMD_SEL_ATN_XFER ;
 int WD_CMD_TRANS_INFO ;
 int WD_COMMAND_PHASE ;
 int WD_CONTROL ;
 int WD_SYNCHRONOUS_TRANSFER ;
 unsigned long read_wd33c93_count (int const) ;
 TYPE_4__* sg_next (TYPE_4__*) ;
 unsigned long sg_virt (TYPE_4__*) ;
 scalar_t__ stub1 (struct scsi_cmnd*,int) ;
 int transfer_pio (int const,int *,unsigned long,int,struct WD33C93_hostdata*) ;
 int write_wd33c93 (int const,int ,int) ;
 int write_wd33c93_cmd (int const,int ) ;
 int write_wd33c93_count (int const,unsigned long) ;

__attribute__((used)) static void
transfer_bytes(const wd33c93_regs regs, struct scsi_cmnd *cmd,
  int data_in_dir)
{
 struct WD33C93_hostdata *hostdata;
 unsigned long length;

 hostdata = (struct WD33C93_hostdata *) cmd->device->host->hostdata;
 if (!cmd->SCp.this_residual && cmd->SCp.buffers_residual) {
  cmd->SCp.buffer = sg_next(cmd->SCp.buffer);
  --cmd->SCp.buffers_residual;
  cmd->SCp.this_residual = cmd->SCp.buffer->length;
  cmd->SCp.ptr = sg_virt(cmd->SCp.buffer);
 }
 if (!cmd->SCp.this_residual)
  return;

 write_wd33c93(regs, WD_SYNCHRONOUS_TRANSFER,
        hostdata->sync_xfer[cmd->device->id]);





 if (hostdata->no_dma || hostdata->dma_setup(cmd, data_in_dir)) {



  transfer_pio(regs, (uchar *) cmd->SCp.ptr,
        cmd->SCp.this_residual, data_in_dir, hostdata);
  length = cmd->SCp.this_residual;
  cmd->SCp.this_residual = read_wd33c93_count(regs);
  cmd->SCp.ptr += (length - cmd->SCp.this_residual);
 }
 else {



  write_wd33c93(regs, WD_CONTROL, CTRL_IDI | CTRL_EDI | hostdata->dma_mode);
  write_wd33c93_count(regs, cmd->SCp.this_residual);

  if ((hostdata->level2 >= L2_DATA) ||
      (hostdata->level2 == L2_BASIC && cmd->SCp.phase == 0)) {
   write_wd33c93(regs, WD_COMMAND_PHASE, 0x45);
   write_wd33c93_cmd(regs, WD_CMD_SEL_ATN_XFER);
   hostdata->state = S_RUNNING_LEVEL2;
  } else
   write_wd33c93_cmd(regs, WD_CMD_TRANS_INFO);

  hostdata->dma = D_DMA_RUNNING;
 }
}
