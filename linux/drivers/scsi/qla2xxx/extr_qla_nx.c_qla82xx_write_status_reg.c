
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qla_hw_data {int pdev; } ;
typedef int scsi_qla_host_t ;


 int QLA82XX_ROMUSB_ROM_INSTR_OPCODE ;
 int QLA82XX_ROMUSB_ROM_WDATA ;
 int * pci_get_drvdata (int ) ;
 int ql_log (int ,int *,int,char*) ;
 int ql_log_warn ;
 scalar_t__ qla82xx_flash_set_write_enable (struct qla_hw_data*) ;
 int qla82xx_flash_wait_write_finish (struct qla_hw_data*) ;
 scalar_t__ qla82xx_wait_rom_done (struct qla_hw_data*) ;
 int qla82xx_wr_32 (struct qla_hw_data*,int ,int) ;

__attribute__((used)) static int
qla82xx_write_status_reg(struct qla_hw_data *ha, uint32_t val)
{
 scsi_qla_host_t *vha = pci_get_drvdata(ha->pdev);

 if (qla82xx_flash_set_write_enable(ha))
  return -1;
 qla82xx_wr_32(ha, QLA82XX_ROMUSB_ROM_WDATA, val);
 qla82xx_wr_32(ha, QLA82XX_ROMUSB_ROM_INSTR_OPCODE, 0x1);
 if (qla82xx_wait_rom_done(ha)) {
  ql_log(ql_log_warn, vha, 0xb00e,
      "Error waiting for rom done.\n");
  return -1;
 }
 return qla82xx_flash_wait_write_finish(ha);
}
