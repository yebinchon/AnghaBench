
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;


 int KERN_INFO ;
 scalar_t__ QLA83XX_PORT0_RXB_PAUSE_THRS ;
 scalar_t__ QLA83XX_PORT0_RXB_TC_MAX_CELL ;
 scalar_t__ QLA83XX_PORT1_RXB_PAUSE_THRS ;
 scalar_t__ QLA83XX_PORT1_RXB_TC_MAX_CELL ;
 scalar_t__ QLA83XX_PORT2_IFB_PAUSE_THRS ;
 scalar_t__ QLA83XX_PORT3_IFB_PAUSE_THRS ;
 int QLA83XX_SET_PAUSE_VAL ;
 int QLA83XX_SET_TC_MAX_CELL_VAL ;
 scalar_t__ QLA83XX_SRE_SHIM_CONTROL ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;
 int qla4_83xx_wr_reg_indirect (struct scsi_qla_host*,scalar_t__,int ) ;

__attribute__((used)) static void __qla4_83xx_disable_pause(struct scsi_qla_host *ha)
{
 int i;


 qla4_83xx_wr_reg_indirect(ha, QLA83XX_SRE_SHIM_CONTROL,
      QLA83XX_SET_PAUSE_VAL);

 for (i = 0; i < 8; i++) {

  qla4_83xx_wr_reg_indirect(ha,
          QLA83XX_PORT0_RXB_PAUSE_THRS + (i * 0x4),
          QLA83XX_SET_PAUSE_VAL);

  qla4_83xx_wr_reg_indirect(ha,
          QLA83XX_PORT1_RXB_PAUSE_THRS + (i * 0x4),
          QLA83XX_SET_PAUSE_VAL);
 }

 for (i = 0; i < 4; i++) {

  qla4_83xx_wr_reg_indirect(ha,
         QLA83XX_PORT0_RXB_TC_MAX_CELL + (i * 0x4),
         QLA83XX_SET_TC_MAX_CELL_VAL);

  qla4_83xx_wr_reg_indirect(ha,
         QLA83XX_PORT1_RXB_TC_MAX_CELL + (i * 0x4),
         QLA83XX_SET_TC_MAX_CELL_VAL);
 }

 qla4_83xx_wr_reg_indirect(ha, QLA83XX_PORT2_IFB_PAUSE_THRS,
      QLA83XX_SET_PAUSE_VAL);
 qla4_83xx_wr_reg_indirect(ha, QLA83XX_PORT3_IFB_PAUSE_THRS,
      QLA83XX_SET_PAUSE_VAL);

 ql4_printk(KERN_INFO, ha, "Disabled pause frames successfully.\n");
}
