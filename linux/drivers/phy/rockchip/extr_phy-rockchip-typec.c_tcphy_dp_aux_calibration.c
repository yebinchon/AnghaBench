
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rockchip_typec_phy {scalar_t__ base; } ;
typedef int s32 ;


 int CMN_CALIB_CODE (int) ;
 int CMN_CALIB_CODE_POS (int) ;
 scalar_t__ CMN_TXPDCAL_CTRL ;
 scalar_t__ CMN_TXPD_ADJ_CTRL ;
 scalar_t__ CMN_TXPUCAL_CTRL ;
 scalar_t__ CMN_TXPU_ADJ_CTRL ;
 scalar_t__ PHY_DP_TX_CTL ;
 int TXDA_BGREF_EN ;
 int TXDA_CAL_LATCH_EN ;
 scalar_t__ TXDA_COEFF_CALC_CTRL ;
 scalar_t__ TXDA_CYA_AUXDA_CYA ;
 int TXDA_DECAP_EN ;
 int TXDA_DECAP_EN_DEL ;
 int TXDA_DP_AUX_EN ;
 int TXDA_DRV_LDO_EN ;
 int TXDA_DRV_PREDRV_EN ;
 int TXDA_DRV_PREDRV_EN_DEL ;
 int TXDA_UPHY_SUPPLY_EN ;
 int TXDA_UPHY_SUPPLY_EN_DEL ;
 scalar_t__ TX_ANA_CTRL_REG_1 ;
 scalar_t__ TX_ANA_CTRL_REG_2 ;
 scalar_t__ TX_ANA_CTRL_REG_3 ;
 scalar_t__ TX_ANA_CTRL_REG_4 ;
 scalar_t__ TX_ANA_CTRL_REG_5 ;
 scalar_t__ TX_DIG_CTRL_REG_2 ;
 int TX_HIGH_Z_TM_EN ;
 int TX_RESCAL_CODE_MASK ;
 int TX_RESCAL_CODE_OFFSET ;
 int XCVR_DECAP_EN ;
 int XCVR_DECAP_EN_DEL ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int usleep_range (int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void tcphy_dp_aux_calibration(struct rockchip_typec_phy *tcphy)
{
 u16 val;
 u16 tx_ana_ctrl_reg_1;
 u16 tx_ana_ctrl_reg_2;
 s32 pu_calib_code, pd_calib_code;
 s32 pu_adj, pd_adj;
 u16 calib;





 val = readl(tcphy->base + CMN_TXPUCAL_CTRL);
 pu_calib_code = CMN_CALIB_CODE_POS(val);
 val = readl(tcphy->base + CMN_TXPDCAL_CTRL);
 pd_calib_code = CMN_CALIB_CODE_POS(val);
 val = readl(tcphy->base + CMN_TXPU_ADJ_CTRL);
 pu_adj = CMN_CALIB_CODE(val);
 val = readl(tcphy->base + CMN_TXPD_ADJ_CTRL);
 pd_adj = CMN_CALIB_CODE(val);
 calib = (pu_calib_code + pd_calib_code) / 2 + pu_adj + pd_adj;


 tx_ana_ctrl_reg_1 = readl(tcphy->base + TX_ANA_CTRL_REG_1);
 tx_ana_ctrl_reg_1 &= ~TXDA_CAL_LATCH_EN;
 writel(tx_ana_ctrl_reg_1, tcphy->base + TX_ANA_CTRL_REG_1);


 val = readl(tcphy->base + TX_DIG_CTRL_REG_2);
 val &= ~(TX_RESCAL_CODE_MASK << TX_RESCAL_CODE_OFFSET);
 val |= calib << TX_RESCAL_CODE_OFFSET;
 writel(val, tcphy->base + TX_DIG_CTRL_REG_2);
 usleep_range(10000, 10050);






 tx_ana_ctrl_reg_1 |= TXDA_CAL_LATCH_EN;
 writel(tx_ana_ctrl_reg_1, tcphy->base + TX_ANA_CTRL_REG_1);
 usleep_range(150, 200);


 writel(0, tcphy->base + PHY_DP_TX_CTL);


 tx_ana_ctrl_reg_2 = XCVR_DECAP_EN;
 writel(tx_ana_ctrl_reg_2, tcphy->base + TX_ANA_CTRL_REG_2);
 udelay(1);
 tx_ana_ctrl_reg_2 |= XCVR_DECAP_EN_DEL;
 writel(tx_ana_ctrl_reg_2, tcphy->base + TX_ANA_CTRL_REG_2);

 writel(0, tcphy->base + TX_ANA_CTRL_REG_3);

 tx_ana_ctrl_reg_1 |= TXDA_UPHY_SUPPLY_EN;
 writel(tx_ana_ctrl_reg_1, tcphy->base + TX_ANA_CTRL_REG_1);
 udelay(1);
 tx_ana_ctrl_reg_1 |= TXDA_UPHY_SUPPLY_EN_DEL;
 writel(tx_ana_ctrl_reg_1, tcphy->base + TX_ANA_CTRL_REG_1);

 writel(0, tcphy->base + TX_ANA_CTRL_REG_5);





 writel(0x1001, tcphy->base + TX_ANA_CTRL_REG_4);


 tx_ana_ctrl_reg_1 |= TXDA_DRV_LDO_EN;
 writel(tx_ana_ctrl_reg_1, tcphy->base + TX_ANA_CTRL_REG_1);
 udelay(5);
 tx_ana_ctrl_reg_1 |= TXDA_BGREF_EN;
 writel(tx_ana_ctrl_reg_1, tcphy->base + TX_ANA_CTRL_REG_1);





 tx_ana_ctrl_reg_2 |= TXDA_DRV_PREDRV_EN;
 writel(tx_ana_ctrl_reg_2, tcphy->base + TX_ANA_CTRL_REG_2);
 udelay(1);
 tx_ana_ctrl_reg_2 |= TXDA_DRV_PREDRV_EN_DEL;
 writel(tx_ana_ctrl_reg_2, tcphy->base + TX_ANA_CTRL_REG_2);
 tx_ana_ctrl_reg_1 |= TXDA_DP_AUX_EN;
 tx_ana_ctrl_reg_1 |= TXDA_DECAP_EN;
 tx_ana_ctrl_reg_1 &= ~TXDA_DRV_LDO_EN;
 tx_ana_ctrl_reg_1 &= ~TXDA_BGREF_EN;
 writel(tx_ana_ctrl_reg_1, tcphy->base + TX_ANA_CTRL_REG_1);
 udelay(1);
 tx_ana_ctrl_reg_1 |= TXDA_DECAP_EN_DEL;
 writel(tx_ana_ctrl_reg_1, tcphy->base + TX_ANA_CTRL_REG_1);






 writel(0, tcphy->base + TX_ANA_CTRL_REG_4);


 writel(0, tcphy->base + TXDA_COEFF_CALC_CTRL);


 writel(0, tcphy->base + TXDA_CYA_AUXDA_CYA);
 val = readl(tcphy->base + TX_DIG_CTRL_REG_2);
 val |= TX_HIGH_Z_TM_EN;
 writel(val, tcphy->base + TX_DIG_CTRL_REG_2);
}
