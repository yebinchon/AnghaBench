
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scsi_qla_host {int dummy; } ;


 int DEBUG2 (int ) ;
 int KERN_INFO ;
 scalar_t__ QLA83XX_PORT0_RXB_PAUSE_THRS ;
 scalar_t__ QLA83XX_PORT0_RXB_TC_MAX_CELL ;
 scalar_t__ QLA83XX_PORT0_RXB_TC_STATS ;
 scalar_t__ QLA83XX_PORT1_RXB_PAUSE_THRS ;
 scalar_t__ QLA83XX_PORT1_RXB_TC_MAX_CELL ;
 scalar_t__ QLA83XX_PORT1_RXB_TC_STATS ;
 scalar_t__ QLA83XX_PORT2_IFB_PAUSE_THRS ;
 scalar_t__ QLA83XX_PORT3_IFB_PAUSE_THRS ;
 scalar_t__ QLA83XX_SRE_SHIM_CONTROL ;
 int QLA_SUCCESS ;
 int pr_info (char*,...) ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,...) ;
 int qla4_83xx_rd_reg_indirect (struct scsi_qla_host*,scalar_t__,int*) ;
 int qla4_83xx_wr_reg_indirect (struct scsi_qla_host*,scalar_t__,int) ;

__attribute__((used)) static void qla4_83xx_dump_pause_control_regs(struct scsi_qla_host *ha)
{
 u32 val = 0, val1 = 0;
 int i, status = QLA_SUCCESS;

 status = qla4_83xx_rd_reg_indirect(ha, QLA83XX_SRE_SHIM_CONTROL, &val);
 DEBUG2(ql4_printk(KERN_INFO, ha, "SRE-Shim Ctrl:0x%x\n", val));


 DEBUG2(ql4_printk(KERN_INFO, ha,
  "Port 0 Rx Buffer Pause Threshold Registers[TC7..TC0]:"));
 for (i = 0; i < 8; i++) {
  status = qla4_83xx_rd_reg_indirect(ha,
    QLA83XX_PORT0_RXB_PAUSE_THRS + (i * 0x4), &val);
  DEBUG2(pr_info("0x%x ", val));
 }

 DEBUG2(pr_info("\n"));


 DEBUG2(ql4_printk(KERN_INFO, ha,
  "Port 1 Rx Buffer Pause Threshold Registers[TC7..TC0]:"));
 for (i = 0; i < 8; i++) {
  status = qla4_83xx_rd_reg_indirect(ha,
    QLA83XX_PORT1_RXB_PAUSE_THRS + (i * 0x4), &val);
  DEBUG2(pr_info("0x%x  ", val));
 }

 DEBUG2(pr_info("\n"));


 DEBUG2(ql4_printk(KERN_INFO, ha,
  "Port 0 RxB Traffic Class Max Cell Registers[3..0]:"));
 for (i = 0; i < 4; i++) {
  status = qla4_83xx_rd_reg_indirect(ha,
          QLA83XX_PORT0_RXB_TC_MAX_CELL + (i * 0x4), &val);
  DEBUG2(pr_info("0x%x  ", val));
 }

 DEBUG2(pr_info("\n"));


 DEBUG2(ql4_printk(KERN_INFO, ha,
  "Port 1 RxB Traffic Class Max Cell Registers[3..0]:"));
 for (i = 0; i < 4; i++) {
  status = qla4_83xx_rd_reg_indirect(ha,
          QLA83XX_PORT1_RXB_TC_MAX_CELL + (i * 0x4), &val);
  DEBUG2(pr_info("0x%x  ", val));
 }

 DEBUG2(pr_info("\n"));


 DEBUG2(ql4_printk(KERN_INFO, ha,
     "Port 0 RxB Rx Traffic Class Stats [TC7..TC0]"));
 for (i = 7; i >= 0; i--) {
  status = qla4_83xx_rd_reg_indirect(ha,
         QLA83XX_PORT0_RXB_TC_STATS,
         &val);
  val &= ~(0x7 << 29);
  qla4_83xx_wr_reg_indirect(ha, QLA83XX_PORT0_RXB_TC_STATS,
       (val | (i << 29)));
  status = qla4_83xx_rd_reg_indirect(ha,
         QLA83XX_PORT0_RXB_TC_STATS,
         &val);
  DEBUG2(pr_info("0x%x  ", val));
 }

 DEBUG2(pr_info("\n"));


 DEBUG2(ql4_printk(KERN_INFO, ha,
     "Port 1 RxB Rx Traffic Class Stats [TC7..TC0]"));
 for (i = 7; i >= 0; i--) {
  status = qla4_83xx_rd_reg_indirect(ha,
         QLA83XX_PORT1_RXB_TC_STATS,
         &val);
  val &= ~(0x7 << 29);
  qla4_83xx_wr_reg_indirect(ha, QLA83XX_PORT1_RXB_TC_STATS,
       (val | (i << 29)));
  status = qla4_83xx_rd_reg_indirect(ha,
         QLA83XX_PORT1_RXB_TC_STATS,
         &val);
  DEBUG2(pr_info("0x%x  ", val));
 }

 DEBUG2(pr_info("\n"));

 status = qla4_83xx_rd_reg_indirect(ha, QLA83XX_PORT2_IFB_PAUSE_THRS,
        &val);
 status = qla4_83xx_rd_reg_indirect(ha, QLA83XX_PORT3_IFB_PAUSE_THRS,
        &val1);

 DEBUG2(ql4_printk(KERN_INFO, ha,
     "IFB-Pause Thresholds: Port 2:0x%x, Port 3:0x%x\n",
     val, val1));
}
