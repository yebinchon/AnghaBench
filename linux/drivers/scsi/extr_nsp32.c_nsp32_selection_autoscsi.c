
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct scsi_cmnd {int result; int cmd_len; int* cmnd; TYPE_2__* device; } ;
struct TYPE_10__ {int msgout_len; int trans_method; TYPE_4__* cur_lunt; TYPE_3__* cur_target; scalar_t__* msgoutbuf; } ;
typedef TYPE_5__ nsp32_hw_data ;
struct TYPE_9__ {unsigned int sglun_paddr; } ;
struct TYPE_8__ {int sample_reg; int syncreg; int ackwidth; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {unsigned int io_port; unsigned int this_id; scalar_t__ hostdata; } ;


 int ACK_WIDTH ;
 unsigned short ALL_COUNTER_CLR ;
 int ARBIT_CLEAR ;
 unsigned short AUTOSCSI_START ;
 unsigned short AUTO_ATN ;
 unsigned short AUTO_MSGIN_00_OR_04 ;
 unsigned short AUTO_MSGIN_02 ;
 int BIT (unsigned char) ;
 unsigned short BM_START ;
 unsigned char BUSMON_BSY ;
 unsigned char BUSMON_SEL ;
 unsigned short CB_IO_MODE ;
 unsigned short CB_MMIO_MODE ;
 unsigned short CLEAR_CDB_FIFO_POINTER ;
 int COMMAND_CONTROL ;
 int COMMAND_DATA ;
 int DID_BUS_BUSY ;
 int DID_ERROR ;
 int IRQ_CONTROL ;
 unsigned short IRQ_CONTROL_ALL_IRQ_MASK ;
 int KERN_ERR ;
 int KERN_WARNING ;
 unsigned int MV_VALID ;
 int NSP32_DEBUG_AUTOSCSI ;
 int NSP32_DEBUG_CDB_CONTENTS ;
 int NSP32_TRANSFER_BUSMASTER ;
 int NSP32_TRANSFER_MMIO ;
 int NSP32_TRANSFER_PIO ;
 int SCSI_BUS_MONITOR ;
 int SCSI_EXECUTE_PHASE ;
 int SCSI_MSG_OUT ;
 int SCSI_OUT_LATCH_TARGET_ID ;
 unsigned short SEL_TIMEOUT_TIME ;
 int SEL_TIME_OUT ;
 int SET_ARBIT ;
 int SGT_ADR ;
 int SREQ_SMPL_RATE ;
 int SYNC_REG ;
 int TRANSFER_CONTROL ;
 unsigned short TRANSFER_GO ;
 int nsp32_arbitration (struct scsi_cmnd*,unsigned int) ;
 int nsp32_dbg (int ,char*,...) ;
 int nsp32_msg (int ,char*) ;
 unsigned char nsp32_read1 (unsigned int,int ) ;
 unsigned short nsp32_read2 (unsigned int,int ) ;
 int nsp32_read4 (unsigned int,int ) ;
 int nsp32_write1 (unsigned int,int ,int) ;
 int nsp32_write2 (unsigned int,int ,unsigned short) ;
 int nsp32_write4 (unsigned int,int ,unsigned int) ;
 unsigned char scmd_id (struct scsi_cmnd*) ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;

__attribute__((used)) static int nsp32_selection_autoscsi(struct scsi_cmnd *SCpnt)
{
 nsp32_hw_data *data = (nsp32_hw_data *)SCpnt->device->host->hostdata;
 unsigned int base = SCpnt->device->host->io_port;
 unsigned int host_id = SCpnt->device->host->this_id;
 unsigned char target = scmd_id(SCpnt);
 unsigned char phase;
 int status;
 unsigned short command = 0;
 unsigned int msgout = 0;
 unsigned short execph;
 int i;

 nsp32_dbg(NSP32_DEBUG_AUTOSCSI, "in");




 nsp32_write2(base, IRQ_CONTROL, IRQ_CONTROL_ALL_IRQ_MASK);




 phase = nsp32_read1(base, SCSI_BUS_MONITOR);
 if ((phase & BUSMON_BSY) || (phase & BUSMON_SEL)) {
  nsp32_msg(KERN_WARNING, "bus busy");
  SCpnt->result = DID_BUS_BUSY << 16;
  status = 1;
  goto out;
        }




 execph = nsp32_read2(base, SCSI_EXECUTE_PHASE);




 nsp32_write2(base, COMMAND_CONTROL, CLEAR_CDB_FIFO_POINTER);




 for (i = 0; i < SCpnt->cmd_len; i++) {
  nsp32_write1(base, COMMAND_DATA, SCpnt->cmnd[i]);
        }
 nsp32_dbg(NSP32_DEBUG_CDB_CONTENTS, "CDB[0]=[0x%x]", SCpnt->cmnd[0]);




 nsp32_write1(base, SCSI_OUT_LATCH_TARGET_ID, BIT(host_id) | BIT(target));







 if (data->msgout_len == 0) {
  nsp32_msg(KERN_ERR, "SCSI MsgOut without any message!");
  SCpnt->result = DID_ERROR << 16;
  status = 1;
  goto out;
 } else if (data->msgout_len > 0 && data->msgout_len <= 3) {
  msgout = 0;
  for (i = 0; i < data->msgout_len; i++) {






   msgout >>= 8;
   msgout |= ((unsigned int)(data->msgoutbuf[i]) << 24);
  }
  msgout |= MV_VALID;
  msgout |= (unsigned int)data->msgout_len;
  nsp32_write4(base, SCSI_MSG_OUT, msgout);
 } else {

  nsp32_write4(base, SCSI_MSG_OUT, 0);
 }




 nsp32_write2(base, SEL_TIME_OUT, SEL_TIMEOUT_TIME);







 nsp32_write1(base, SREQ_SMPL_RATE, data->cur_target->sample_reg);




 nsp32_write1(base, SET_ARBIT, ARBIT_CLEAR);





 nsp32_write1(base, SYNC_REG, data->cur_target->syncreg);




 nsp32_write1(base, ACK_WIDTH, data->cur_target->ackwidth);

 nsp32_dbg(NSP32_DEBUG_AUTOSCSI,
    "syncreg=0x%x, ackwidth=0x%x, sgtpaddr=0x%x, id=0x%x",
    nsp32_read1(base, SYNC_REG), nsp32_read1(base, ACK_WIDTH),
    nsp32_read4(base, SGT_ADR), nsp32_read1(base, SCSI_OUT_LATCH_TARGET_ID));
 nsp32_dbg(NSP32_DEBUG_AUTOSCSI, "msgout_len=%d, msgout=0x%x",
    data->msgout_len, msgout);




 nsp32_write4(base, SGT_ADR, data->cur_lunt->sglun_paddr);




 command = 0;
 command |= (TRANSFER_GO | ALL_COUNTER_CLR);
 if (data->trans_method & NSP32_TRANSFER_BUSMASTER) {
  if (scsi_bufflen(SCpnt) > 0) {
   command |= BM_START;
  }
 } else if (data->trans_method & NSP32_TRANSFER_MMIO) {
  command |= CB_MMIO_MODE;
 } else if (data->trans_method & NSP32_TRANSFER_PIO) {
  command |= CB_IO_MODE;
 }
 nsp32_write2(base, TRANSFER_CONTROL, command);




 command = (CLEAR_CDB_FIFO_POINTER |
     AUTOSCSI_START |
     AUTO_MSGIN_00_OR_04 |
     AUTO_MSGIN_02 |
     AUTO_ATN );
 nsp32_write2(base, COMMAND_CONTROL, command);




 status = nsp32_arbitration(SCpnt, base);

 out:



 nsp32_write2(base, IRQ_CONTROL, 0);

 return status;
}
