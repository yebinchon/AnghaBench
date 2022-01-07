
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qla_hw_data {int portnum; } ;


 int QLA82XX_CRB_DRV_ACTIVE ;
 int QLA82XX_DRV_ACTIVE ;
 int qla82xx_rd_32 (struct qla_hw_data*,int ) ;
 int qla82xx_wr_32 (struct qla_hw_data*,int ,int) ;

inline void
qla82xx_clear_drv_active(struct qla_hw_data *ha)
{
 uint32_t drv_active;

 drv_active = qla82xx_rd_32(ha, QLA82XX_CRB_DRV_ACTIVE);
 drv_active &= ~(QLA82XX_DRV_ACTIVE << (ha->portnum * 4));
 qla82xx_wr_32(ha, QLA82XX_CRB_DRV_ACTIVE, drv_active);
}
