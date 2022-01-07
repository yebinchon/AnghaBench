
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_hw_data {int pdev; } ;
typedef int scsi_qla_host_t ;


 int M25P_INSTR_WRDI ;
 int QLA82XX_ROMUSB_ROM_INSTR_OPCODE ;
 int * pci_get_drvdata (int ) ;
 int ql_log (int ,int *,int,char*) ;
 int ql_log_warn ;
 scalar_t__ qla82xx_wait_rom_done (struct qla_hw_data*) ;
 int qla82xx_wr_32 (struct qla_hw_data*,int ,int ) ;

__attribute__((used)) static int
qla82xx_write_disable_flash(struct qla_hw_data *ha)
{
 scsi_qla_host_t *vha = pci_get_drvdata(ha->pdev);

 qla82xx_wr_32(ha, QLA82XX_ROMUSB_ROM_INSTR_OPCODE, M25P_INSTR_WRDI);
 if (qla82xx_wait_rom_done(ha)) {
  ql_log(ql_log_warn, vha, 0xb00f,
      "Error waiting for rom done.\n");
  return -1;
 }
 return 0;
}
