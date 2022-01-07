
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {int dummy; } ;


 int QLA_SUCCESS ;
 scalar_t__ is_qla8022 (struct scsi_qla_host*) ;
 scalar_t__ is_qla8032 (struct scsi_qla_host*) ;
 scalar_t__ is_qla8042 (struct scsi_qla_host*) ;
 int qla4_82xx_get_fdt_info (struct scsi_qla_host*) ;
 int qla4_82xx_get_idc_param (struct scsi_qla_host*) ;
 int qla4_83xx_get_idc_param (struct scsi_qla_host*) ;
 int qla4_8xxx_find_flt_start (struct scsi_qla_host*,int *) ;
 int qla4_8xxx_get_flt_info (struct scsi_qla_host*,int ) ;

int
qla4_8xxx_get_flash_info(struct scsi_qla_host *ha)
{
 int ret;
 uint32_t flt_addr;

 ret = qla4_8xxx_find_flt_start(ha, &flt_addr);
 if (ret != QLA_SUCCESS)
  return ret;

 qla4_8xxx_get_flt_info(ha, flt_addr);
 if (is_qla8022(ha)) {
  qla4_82xx_get_fdt_info(ha);
  qla4_82xx_get_idc_param(ha);
 } else if (is_qla8032(ha) || is_qla8042(ha)) {
  qla4_83xx_get_idc_param(ha);
 }

 return QLA_SUCCESS;
}
