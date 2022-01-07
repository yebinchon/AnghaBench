
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
typedef enum dsi_pll_power_state { ____Placeholder_dsi_pll_power_state } dsi_pll_power_state ;


 int DSI_CLK_CTRL ;
 int DSI_PLL_POWER_ON_ALL ;
 int DSI_PLL_POWER_ON_DIV ;
 int DSSERR (char*,int) ;
 int ENODEV ;
 int FEAT_DSI_PLL_PWR_BUG ;
 int FLD_GET (int ,int,int) ;
 int REG_FLD_MOD (struct platform_device*,int ,int,int,int) ;
 int dsi_read_reg (struct platform_device*,int ) ;
 scalar_t__ dss_has_feature (int ) ;
 int udelay (int) ;

__attribute__((used)) static int dsi_pll_power(struct platform_device *dsidev,
  enum dsi_pll_power_state state)
{
 int t = 0;


 if (dss_has_feature(FEAT_DSI_PLL_PWR_BUG) &&
   state == DSI_PLL_POWER_ON_DIV)
  state = DSI_PLL_POWER_ON_ALL;


 REG_FLD_MOD(dsidev, DSI_CLK_CTRL, state, 31, 30);


 while (FLD_GET(dsi_read_reg(dsidev, DSI_CLK_CTRL), 29, 28) != state) {
  if (++t > 1000) {
   DSSERR("Failed to set DSI PLL power mode to %d\n",
     state);
   return -ENODEV;
  }
  udelay(1);
 }

 return 0;
}
