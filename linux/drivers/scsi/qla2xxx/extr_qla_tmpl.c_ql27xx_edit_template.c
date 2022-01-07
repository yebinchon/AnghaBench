
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int dummy; } ;
struct qla27xx_fwdt_template {int dummy; } ;


 int qla27xx_driver_info (struct qla27xx_fwdt_template*) ;
 int qla27xx_firmware_info (struct scsi_qla_host*,struct qla27xx_fwdt_template*) ;
 int qla27xx_time_stamp (struct qla27xx_fwdt_template*) ;

__attribute__((used)) static void
ql27xx_edit_template(struct scsi_qla_host *vha,
 struct qla27xx_fwdt_template *tmp)
{
 qla27xx_time_stamp(tmp);
 qla27xx_driver_info(tmp);
 qla27xx_firmware_info(vha, tmp);
}
