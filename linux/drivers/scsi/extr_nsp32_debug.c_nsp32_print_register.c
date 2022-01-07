
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACK_WIDTH ;
 int ARBIT_STATUS ;
 int BM_CNT ;
 int BM_START_ADR ;
 int COMMAND_CONTROL ;
 int FIFO_REST_CNT ;
 int IRQ_STATUS ;
 int MISC_WR ;
 int NSP32_DEBUG_MASK ;
 int NSP32_SPECIAL_PRINT_REGISTER ;
 int OLD_SCSI_PHASE ;
 int SACK_CNT ;
 int SAVED_SACK_CNT ;
 int SCSI_BUS_CONTROL ;
 int SCSI_BUS_MONITOR ;
 int SCSI_CSB_IN ;
 int SCSI_EXECUTE_PHASE ;
 int SCSI_MSG_OUT ;
 int SCSI_OUT_LATCH_TARGET_ID ;
 int SEL_TIME_OUT ;
 int SGT_ADR ;
 int SREQ_CNT ;
 int SREQ_SMPL_RATE ;
 int SYNC_REG ;
 int TRANSFER_STATUS ;
 int nsp32_index_read1 (int,int ) ;
 int nsp32_index_read2 (int,int ) ;
 int nsp32_read1 (int,int ) ;
 int nsp32_read2 (int,int ) ;
 int nsp32_read4 (int,int ) ;
 int printk (char*,...) ;

__attribute__((used)) static void nsp32_print_register(int base)
{
 if (!(NSP32_DEBUG_MASK & NSP32_SPECIAL_PRINT_REGISTER))
  return;

 printk("Phase=0x%x, ", nsp32_read1(base, SCSI_BUS_MONITOR));
 printk("OldPhase=0x%x, ", nsp32_index_read1(base, OLD_SCSI_PHASE));
 printk("syncreg=0x%x, ", nsp32_read1(base, SYNC_REG));
 printk("ackwidth=0x%x, ", nsp32_read1(base, ACK_WIDTH));
 printk("sgtpaddr=0x%lx, ", nsp32_read4(base, SGT_ADR));
 printk("scsioutlatch=0x%x, ", nsp32_read1(base, SCSI_OUT_LATCH_TARGET_ID));
 printk("msgout=0x%lx, ", nsp32_read4(base, SCSI_MSG_OUT));
 printk("miscrd=0x%x, ", nsp32_index_read2(base, MISC_WR));
 printk("seltimeout=0x%x, ", nsp32_read2(base, SEL_TIME_OUT));
 printk("sreqrate=0x%x, ", nsp32_read1(base, SREQ_SMPL_RATE));
 printk("transStatus=0x%x, ", nsp32_read2(base, TRANSFER_STATUS));
 printk("reselectid=0x%x, ", nsp32_read2(base, COMMAND_CONTROL));
 printk("arbit=0x%x, ", nsp32_read1(base, ARBIT_STATUS));
 printk("BmStart=0x%lx, ", nsp32_read4(base, BM_START_ADR));
 printk("BmCount=0x%lx, ", nsp32_read4(base, BM_CNT));
 printk("SackCnt=0x%lx, ", nsp32_read4(base, SACK_CNT));
 printk("SReqCnt=0x%lx, ", nsp32_read4(base, SREQ_CNT));
 printk("SavedSackCnt=0x%lx, ", nsp32_read4(base, SAVED_SACK_CNT));
 printk("ScsiBusControl=0x%x, ", nsp32_read1(base, SCSI_BUS_CONTROL));
 printk("FifoRestCnt=0x%x, ", nsp32_read2(base, FIFO_REST_CNT));
 printk("CdbIn=0x%x, ", nsp32_read1(base, SCSI_CSB_IN));
 printk("\n");

 if (0) {
  printk("execph=0x%x, ", nsp32_read2(base, SCSI_EXECUTE_PHASE));
  printk("IrqStatus=0x%x, ", nsp32_read2(base, IRQ_STATUS));
  printk("\n");
 }
}
