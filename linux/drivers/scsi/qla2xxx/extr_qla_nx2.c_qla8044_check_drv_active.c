
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int portnum; } ;


 int QLA8044_CRB_DRV_ACTIVE_INDEX ;
 int QLA_SUCCESS ;
 int QLA_TEST_FAILED ;
 int qla8044_rd_direct (struct scsi_qla_host*,int ) ;

__attribute__((used)) static int
qla8044_check_drv_active(struct scsi_qla_host *vha)
{
 uint32_t drv_active;
 struct qla_hw_data *ha = vha->hw;

 drv_active = qla8044_rd_direct(vha, QLA8044_CRB_DRV_ACTIVE_INDEX);
 if (drv_active & (1 << ha->portnum))
  return QLA_SUCCESS;
 else
  return QLA_TEST_FAILED;
}
