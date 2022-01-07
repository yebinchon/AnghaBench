
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dss_pll {char* name; int * ops; int * hw; int base; struct clk* clkin; int id; } ;
struct dsi_data {scalar_t__ module_id; int pll_base; struct dss_pll pll; } ;
struct clk {int dummy; } ;


 int DSSERR (char*) ;
 int DSS_PLL_DSI1 ;
 int DSS_PLL_DSI2 ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* devm_clk_get (int *,char*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_pll_ops ;
 int dss_omap3_dsi_pll_hw ;
 int dss_omap4_dsi_pll_hw ;
 int dss_omap5_dsi_pll_hw ;
 int dss_pll_register (struct dss_pll*) ;
 int omapdss_get_version () ;

__attribute__((used)) static int dsi_init_pll_data(struct platform_device *dsidev)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 struct dss_pll *pll = &dsi->pll;
 struct clk *clk;
 int r;

 clk = devm_clk_get(&dsidev->dev, "sys_clk");
 if (IS_ERR(clk)) {
  DSSERR("can't get sys_clk\n");
  return PTR_ERR(clk);
 }

 pll->name = dsi->module_id == 0 ? "dsi0" : "dsi1";
 pll->id = dsi->module_id == 0 ? DSS_PLL_DSI1 : DSS_PLL_DSI2;
 pll->clkin = clk;
 pll->base = dsi->pll_base;

 switch (omapdss_get_version()) {
 case 134:
 case 133:
 case 132:
 case 135:
  pll->hw = &dss_omap3_dsi_pll_hw;
  break;

 case 130:
 case 129:
 case 131:
  pll->hw = &dss_omap4_dsi_pll_hw;
  break;

 case 128:
  pll->hw = &dss_omap5_dsi_pll_hw;
  break;

 default:
  return -ENODEV;
 }

 pll->ops = &dsi_pll_ops;

 r = dss_pll_register(pll);
 if (r)
  return r;

 return 0;
}
