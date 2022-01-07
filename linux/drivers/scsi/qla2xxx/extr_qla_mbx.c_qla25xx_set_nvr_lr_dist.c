
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct qla_hw_data {struct nvram_81xx* nvram; } ;
struct nvram_81xx {int enhanced_features; } ;


 int BIT_0 ;
 scalar_t__ IS_QLA27XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA28XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA83XX (struct qla_hw_data*) ;
 int LR_DIST_FW_FIELD (int ) ;

__attribute__((used)) static inline uint16_t qla25xx_set_nvr_lr_dist(struct qla_hw_data *ha)
{
 uint16_t mb4 = BIT_0;

 if (IS_QLA83XX(ha) || IS_QLA27XX(ha) || IS_QLA28XX(ha)) {
  struct nvram_81xx *nv = ha->nvram;

  mb4 |= LR_DIST_FW_FIELD(nv->enhanced_features);
 }

 return mb4;
}
