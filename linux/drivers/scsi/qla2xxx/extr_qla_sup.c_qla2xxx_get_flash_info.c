
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct qla_hw_data {int dummy; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int IS_CNA_CAPABLE (struct qla_hw_data*) ;
 int IS_QLA2031 (struct qla_hw_data*) ;
 int IS_QLA24XX_TYPE (struct qla_hw_data*) ;
 int IS_QLA25XX (struct qla_hw_data*) ;
 int IS_QLA27XX (struct qla_hw_data*) ;
 int IS_QLA28XX (struct qla_hw_data*) ;
 int QLA_SUCCESS ;
 int qla2xxx_find_flt_start (TYPE_1__*,int *) ;
 int qla2xxx_get_fdt_info (TYPE_1__*) ;
 int qla2xxx_get_flt_info (TYPE_1__*,int ) ;
 int qla2xxx_get_idc_param (TYPE_1__*) ;

int
qla2xxx_get_flash_info(scsi_qla_host_t *vha)
{
 int ret;
 uint32_t flt_addr;
 struct qla_hw_data *ha = vha->hw;

 if (!IS_QLA24XX_TYPE(ha) && !IS_QLA25XX(ha) &&
     !IS_CNA_CAPABLE(ha) && !IS_QLA2031(ha) &&
     !IS_QLA27XX(ha) && !IS_QLA28XX(ha))
  return QLA_SUCCESS;

 ret = qla2xxx_find_flt_start(vha, &flt_addr);
 if (ret != QLA_SUCCESS)
  return ret;

 qla2xxx_get_flt_info(vha, flt_addr);
 qla2xxx_get_fdt_info(vha);
 qla2xxx_get_idc_param(vha);

 return QLA_SUCCESS;
}
