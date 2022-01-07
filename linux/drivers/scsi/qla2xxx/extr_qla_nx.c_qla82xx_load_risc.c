
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct qla_hw_data {int dummy; } ;
struct TYPE_6__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 scalar_t__ IS_QLA8044 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA82XX (struct qla_hw_data*) ;
 int qla8044_device_state_handler (TYPE_1__*) ;
 int qla8044_idc_lock (struct qla_hw_data*) ;
 int qla8044_idc_unlock (struct qla_hw_data*) ;
 int qla82xx_device_state_handler (TYPE_1__*) ;
 int qla83xx_reset_ownership (TYPE_1__*) ;

int qla82xx_load_risc(scsi_qla_host_t *vha, uint32_t *srisc_addr)
{
 int rval = -1;
 struct qla_hw_data *ha = vha->hw;

 if (IS_QLA82XX(ha))
  rval = qla82xx_device_state_handler(vha);
 else if (IS_QLA8044(ha)) {
  qla8044_idc_lock(ha);

  qla83xx_reset_ownership(vha);
  qla8044_idc_unlock(ha);
  rval = qla8044_device_state_handler(vha);
 }
 return rval;
}
