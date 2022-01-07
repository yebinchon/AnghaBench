
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int dummy; } ;


 size_t const CRB_REG_INDEX_MAX ;
 int QLA_FUNCTION_FAILED ;
 int qla8044_rd_reg (struct qla_hw_data*,int ) ;
 int * qla8044_reg_tbl ;

int
qla8044_rd_direct(struct scsi_qla_host *vha,
 const uint32_t crb_reg)
{
 struct qla_hw_data *ha = vha->hw;

 if (crb_reg < CRB_REG_INDEX_MAX)
  return qla8044_rd_reg(ha, qla8044_reg_tbl[crb_reg]);
 else
  return QLA_FUNCTION_FAILED;
}
