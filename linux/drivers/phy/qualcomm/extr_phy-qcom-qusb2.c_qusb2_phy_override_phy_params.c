
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qusb2_phy_cfg {int * regs; } ;
struct qusb2_phy {int imp_res_offset_value; int hstx_trim_value; int preemphasis_level; scalar_t__ preemphasis_width; int base; scalar_t__ override_preemphasis_width; scalar_t__ override_preemphasis; scalar_t__ override_hstx_trim; scalar_t__ override_imp_res_offset; struct qusb2_phy_cfg* cfg; } ;


 int HSTX_TRIM_MASK ;
 int HSTX_TRIM_SHIFT ;
 int IMP_RES_OFFSET_MASK ;
 int IMP_RES_OFFSET_SHIFT ;
 int PREEMPHASIS_EN_MASK ;
 int PREEMPHASIS_EN_SHIFT ;
 int PREEMPH_WIDTH_HALF_BIT ;
 int QUSB2PHY_IMP_CTRL1 ;
 size_t QUSB2PHY_PORT_TUNE1 ;
 scalar_t__ QUSB2_V2_PREEMPHASIS_WIDTH_HALF_BIT ;
 int qusb2_clrbits (int ,int ,int ) ;
 int qusb2_setbits (int ,int ,int ) ;
 int qusb2_write_mask (int ,int ,int,int ) ;

__attribute__((used)) static void qusb2_phy_override_phy_params(struct qusb2_phy *qphy)
{
 const struct qusb2_phy_cfg *cfg = qphy->cfg;

 if (qphy->override_imp_res_offset)
  qusb2_write_mask(qphy->base, QUSB2PHY_IMP_CTRL1,
        qphy->imp_res_offset_value << IMP_RES_OFFSET_SHIFT,
        IMP_RES_OFFSET_MASK);

 if (qphy->override_hstx_trim)
  qusb2_write_mask(qphy->base, cfg->regs[QUSB2PHY_PORT_TUNE1],
     qphy->hstx_trim_value << HSTX_TRIM_SHIFT,
     HSTX_TRIM_MASK);

 if (qphy->override_preemphasis)
  qusb2_write_mask(qphy->base, cfg->regs[QUSB2PHY_PORT_TUNE1],
    qphy->preemphasis_level << PREEMPHASIS_EN_SHIFT,
    PREEMPHASIS_EN_MASK);

 if (qphy->override_preemphasis_width) {
  if (qphy->preemphasis_width ==
      QUSB2_V2_PREEMPHASIS_WIDTH_HALF_BIT)
   qusb2_setbits(qphy->base,
          cfg->regs[QUSB2PHY_PORT_TUNE1],
          PREEMPH_WIDTH_HALF_BIT);
  else
   qusb2_clrbits(qphy->base,
          cfg->regs[QUSB2PHY_PORT_TUNE1],
          PREEMPH_WIDTH_HALF_BIT);
 }
}
