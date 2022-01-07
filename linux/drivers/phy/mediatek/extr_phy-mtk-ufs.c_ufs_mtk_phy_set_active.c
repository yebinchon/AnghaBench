
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_mtk_phy {int dummy; } ;


 int CDR_ISO_EN ;
 int CDR_PWR_ON ;
 int FRC_CDR_ISO_EN ;
 int FRC_CDR_PWR_ON ;
 int FRC_FRC_PWR_ON ;
 int FRC_PLL_ISO_EN ;
 int FRC_RX_SQ_EN ;
 int FSM_DIFZ_FRC ;
 int MP_GLB_DIG_8C ;
 int MP_LN_DIG_RX_9C ;
 int MP_LN_DIG_RX_AC ;
 int MP_LN_RX_44 ;
 int PLL_ISO_EN ;
 int PLL_PWR_ON ;
 int RX_SQ_EN ;
 int mphy_clr_bit (struct ufs_mtk_phy*,int ,int ) ;
 int mphy_set_bit (struct ufs_mtk_phy*,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void ufs_mtk_phy_set_active(struct ufs_mtk_phy *phy)
{

 mphy_set_bit(phy, MP_GLB_DIG_8C, PLL_PWR_ON);
 mphy_clr_bit(phy, MP_GLB_DIG_8C, FRC_FRC_PWR_ON);


 mphy_clr_bit(phy, MP_GLB_DIG_8C, PLL_ISO_EN);
 mphy_clr_bit(phy, MP_GLB_DIG_8C, FRC_PLL_ISO_EN);


 mphy_set_bit(phy, MP_LN_RX_44, CDR_PWR_ON);
 mphy_clr_bit(phy, MP_LN_RX_44, FRC_CDR_PWR_ON);


 mphy_clr_bit(phy, MP_LN_RX_44, CDR_ISO_EN);
 mphy_clr_bit(phy, MP_LN_RX_44, FRC_CDR_ISO_EN);


 mphy_set_bit(phy, MP_LN_DIG_RX_AC, RX_SQ_EN);
 mphy_clr_bit(phy, MP_LN_DIG_RX_AC, FRC_RX_SQ_EN);


 udelay(1);


 mphy_clr_bit(phy, MP_LN_DIG_RX_9C, FSM_DIFZ_FRC);
}
