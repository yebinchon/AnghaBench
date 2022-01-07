
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;


 int KERN_INFO ;
 int QLA83XX_RESET_CONTROL ;
 int QLA83XX_RESET_EPG_SHIM ;
 int QLA83XX_RESET_ETHER_PCS ;
 int QLA83XX_RESET_PORT0 ;
 int QLA83XX_RESET_PORT1 ;
 int QLA83XX_RESET_PORT2 ;
 int QLA83XX_RESET_PORT3 ;
 int QLA83XX_RESET_REG ;
 int QLA83XX_RESET_SRE_SHIM ;
 int ql4_printk (int ,struct scsi_qla_host*,char*) ;
 int qla4_83xx_wr_reg_indirect (struct scsi_qla_host*,int ,int) ;

__attribute__((used)) static void qla4_83xx_eport_init(struct scsi_qla_host *ha)
{

 qla4_83xx_wr_reg_indirect(ha, QLA83XX_RESET_REG, 0x0);
 qla4_83xx_wr_reg_indirect(ha, QLA83XX_RESET_PORT0, 0x0);
 qla4_83xx_wr_reg_indirect(ha, QLA83XX_RESET_PORT1, 0x0);
 qla4_83xx_wr_reg_indirect(ha, QLA83XX_RESET_PORT2, 0x0);
 qla4_83xx_wr_reg_indirect(ha, QLA83XX_RESET_PORT3, 0x0);
 qla4_83xx_wr_reg_indirect(ha, QLA83XX_RESET_SRE_SHIM, 0x0);
 qla4_83xx_wr_reg_indirect(ha, QLA83XX_RESET_EPG_SHIM, 0x0);
 qla4_83xx_wr_reg_indirect(ha, QLA83XX_RESET_ETHER_PCS, 0x0);


 qla4_83xx_wr_reg_indirect(ha, QLA83XX_RESET_CONTROL, 0xFF);

 ql4_printk(KERN_INFO, ha, "EPORT is out of reset.\n");
}
