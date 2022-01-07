
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qla_hw_data {int dummy; } ;


 int DONTRESET_BIT0 ;
 int QLA8044_IDC_DRV_CTRL ;
 int qla8044_rd_reg (struct qla_hw_data*,int ) ;

__attribute__((used)) static int
qla8044_idc_dontreset(struct qla_hw_data *ha)
{
 uint32_t idc_ctrl;

 idc_ctrl = qla8044_rd_reg(ha, QLA8044_IDC_DRV_CTRL);
 return idc_ctrl & DONTRESET_BIT0;
}
