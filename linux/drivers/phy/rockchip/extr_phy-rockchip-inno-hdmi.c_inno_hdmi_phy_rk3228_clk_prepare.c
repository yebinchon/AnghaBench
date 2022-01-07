
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inno_hdmi_phy {int dummy; } ;
struct clk_hw {int dummy; } ;


 int RK3228_PRE_PLL_POWER_DOWN ;
 int inno_update_bits (struct inno_hdmi_phy*,int,int ,int ) ;
 struct inno_hdmi_phy* to_inno_hdmi_phy (struct clk_hw*) ;

__attribute__((used)) static int inno_hdmi_phy_rk3228_clk_prepare(struct clk_hw *hw)
{
 struct inno_hdmi_phy *inno = to_inno_hdmi_phy(hw);

 inno_update_bits(inno, 0xe0, RK3228_PRE_PLL_POWER_DOWN, 0);
 return 0;
}
