
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_10__ {unsigned int BaseAddress; int trans_method; TYPE_4__* cur_lunt; TYPE_3__* cur_target; } ;
typedef TYPE_5__ nsp32_hw_data ;
struct TYPE_9__ {int sglun_paddr; } ;
struct TYPE_8__ {int sample_reg; int ackwidth; int syncreg; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {scalar_t__ hostdata; } ;


 int ACK_WIDTH ;
 unsigned short ALL_COUNTER_CLR ;
 unsigned short AUTOSCSI_RESTART ;
 unsigned short AUTO_COMMAND_PHASE ;
 unsigned short BM_START ;
 unsigned short CB_IO_MODE ;
 unsigned short CB_MMIO_MODE ;
 unsigned short CLEAR_CDB_FIFO_POINTER ;
 int COMMAND_CONTROL ;
 int KERN_ERR ;
 int NSP32_DEBUG_RESTART ;
 int NSP32_TRANSFER_BUSMASTER ;
 int NSP32_TRANSFER_MMIO ;
 int NSP32_TRANSFER_PIO ;
 int SGT_ADR ;
 int SREQ_SMPL_RATE ;
 int SYNC_REG ;
 int TRANSFER_CONTROL ;
 unsigned short TRANSFER_GO ;
 int nsp32_dbg (int ,char*) ;
 int nsp32_msg (int ,char*) ;
 int nsp32_write1 (unsigned int,int ,int ) ;
 int nsp32_write2 (unsigned int,int ,unsigned short) ;
 int nsp32_write4 (unsigned int,int ,int ) ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;

__attribute__((used)) static void nsp32_restart_autoscsi(struct scsi_cmnd *SCpnt, unsigned short command)
{
 nsp32_hw_data *data = (nsp32_hw_data *)SCpnt->device->host->hostdata;
 unsigned int base = data->BaseAddress;
 unsigned short transfer = 0;

 nsp32_dbg(NSP32_DEBUG_RESTART, "enter");

 if (data->cur_target == ((void*)0) || data->cur_lunt == ((void*)0)) {
  nsp32_msg(KERN_ERR, "Target or Lun is invalid");
 }





 nsp32_write1(base, SYNC_REG, data->cur_target->syncreg);




 nsp32_write1(base, ACK_WIDTH, data->cur_target->ackwidth);




 nsp32_write1(base, SREQ_SMPL_RATE, data->cur_target->sample_reg);




 nsp32_write4(base, SGT_ADR, data->cur_lunt->sglun_paddr);




 transfer = 0;
 transfer |= (TRANSFER_GO | ALL_COUNTER_CLR);
 if (data->trans_method & NSP32_TRANSFER_BUSMASTER) {
  if (scsi_bufflen(SCpnt) > 0) {
   transfer |= BM_START;
  }
 } else if (data->trans_method & NSP32_TRANSFER_MMIO) {
  transfer |= CB_MMIO_MODE;
 } else if (data->trans_method & NSP32_TRANSFER_PIO) {
  transfer |= CB_IO_MODE;
 }
 nsp32_write2(base, TRANSFER_CONTROL, transfer);






 command |= (CLEAR_CDB_FIFO_POINTER |
      AUTO_COMMAND_PHASE |
      AUTOSCSI_RESTART );
 nsp32_write2(base, COMMAND_CONTROL, command);

 nsp32_dbg(NSP32_DEBUG_RESTART, "exit");
}
