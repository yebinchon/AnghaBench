
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct qla_hw_data {int long_range_distance; } ;


 int BIT_0 ;
 scalar_t__ IS_QLA27XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA28XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA83XX (struct qla_hw_data*) ;
 int LR_DIST_FW_POS ;

__attribute__((used)) static inline uint16_t qla25xx_set_sfp_lr_dist(struct qla_hw_data *ha)
{
 uint16_t mb4 = BIT_0;

 if (IS_QLA83XX(ha) || IS_QLA27XX(ha) || IS_QLA28XX(ha))
  mb4 |= ha->long_range_distance << LR_DIST_FW_POS;

 return mb4;
}
