
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qla_hw_data {int dummy; } ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int QLA8044_FLASH_LOCK_ID ;
 int QLA8044_FLASH_UNLOCK ;
 int qla8044_rd_reg (struct qla_hw_data*,int ) ;
 int qla8044_wr_reg (struct qla_hw_data*,int ,int) ;

__attribute__((used)) static void
qla8044_flash_unlock(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;


 qla8044_wr_reg(ha, QLA8044_FLASH_LOCK_ID, 0xFF);
 qla8044_rd_reg(ha, QLA8044_FLASH_UNLOCK);
}
