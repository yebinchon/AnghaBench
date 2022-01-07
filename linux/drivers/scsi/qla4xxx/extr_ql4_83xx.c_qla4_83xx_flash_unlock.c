
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;


 int QLA83XX_FLASH_LOCK_ID ;
 int QLA83XX_FLASH_UNLOCK ;
 int qla4_83xx_rd_reg (struct scsi_qla_host*,int ) ;
 int qla4_83xx_wr_reg (struct scsi_qla_host*,int ,int) ;

__attribute__((used)) static void qla4_83xx_flash_unlock(struct scsi_qla_host *ha)
{

 qla4_83xx_wr_reg(ha, QLA83XX_FLASH_LOCK_ID, 0xFF);
 qla4_83xx_rd_reg(ha, QLA83XX_FLASH_UNLOCK);
}
