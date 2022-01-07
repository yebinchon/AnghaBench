
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*) ;
 scalar_t__ qla4_82xx_rom_lock (struct scsi_qla_host*) ;
 int qla4_82xx_rom_unlock (struct scsi_qla_host*) ;

void qla4_82xx_rom_lock_recovery(struct scsi_qla_host *ha)
{
 if (qla4_82xx_rom_lock(ha)) {

  dev_info(&ha->pdev->dev, "Resetting rom_lock\n");
 }






 qla4_82xx_rom_unlock(ha);
}
