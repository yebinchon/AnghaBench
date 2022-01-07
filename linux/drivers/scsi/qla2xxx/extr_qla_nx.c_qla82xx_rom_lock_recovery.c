
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qla_hw_data {int pdev; } ;
typedef int scsi_qla_host_t ;


 int QLA82XX_ROM_LOCK_ID ;
 int * pci_get_drvdata (int ) ;
 int ql_log (int ,int *,int,char*,int ) ;
 int ql_log_info ;
 int qla82xx_rd_32 (struct qla_hw_data*,int ) ;
 scalar_t__ qla82xx_rom_lock (struct qla_hw_data*) ;
 int qla82xx_rom_unlock (struct qla_hw_data*) ;

__attribute__((used)) static void
qla82xx_rom_lock_recovery(struct qla_hw_data *ha)
{
 scsi_qla_host_t *vha = pci_get_drvdata(ha->pdev);
 uint32_t lock_owner = 0;

 if (qla82xx_rom_lock(ha)) {
  lock_owner = qla82xx_rd_32(ha, QLA82XX_ROM_LOCK_ID);

  ql_log(ql_log_info, vha, 0xb022,
      "Resetting rom_lock, Lock Owner %u.\n", lock_owner);
 }





 qla82xx_rom_unlock(ha);
}
