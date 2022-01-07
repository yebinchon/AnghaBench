
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;


 scalar_t__ IS_ISP1040 (struct scsi_qla_host*) ;
 int qla1280_chip_diag (struct scsi_qla_host*) ;
 int qla1280_load_firmware_dma (struct scsi_qla_host*) ;
 int qla1280_load_firmware_pio (struct scsi_qla_host*) ;
 int qla1280_start_firmware (struct scsi_qla_host*) ;

__attribute__((used)) static int
qla1280_load_firmware(struct scsi_qla_host *ha)
{

 int err;

 err = qla1280_chip_diag(ha);
 if (err)
  goto out;
 if (IS_ISP1040(ha))
  err = qla1280_load_firmware_pio(ha);
 else
  err = qla1280_load_firmware_dma(ha);
 if (err)
  goto out;
 err = qla1280_start_firmware(ha);
 out:
 return err;
}
