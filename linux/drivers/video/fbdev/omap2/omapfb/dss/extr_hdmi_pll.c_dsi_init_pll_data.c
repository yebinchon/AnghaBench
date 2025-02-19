
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dss_pll {char* name; int * ops; int * hw; struct clk* clkin; int base; int id; } ;
struct hdmi_pll_data {int base; struct dss_pll pll; } ;
struct clk {int dummy; } ;


 int DSSERR (char*) ;
 int DSS_PLL_HDMI ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct clk*) ;





 int PTR_ERR (struct clk*) ;
 struct clk* devm_clk_get (int *,char*) ;
 int dsi_pll_ops ;
 int dss_omap4_hdmi_pll_hw ;
 int dss_omap5_hdmi_pll_hw ;
 int dss_pll_register (struct dss_pll*) ;
 int omapdss_get_version () ;

__attribute__((used)) static int dsi_init_pll_data(struct platform_device *pdev, struct hdmi_pll_data *hpll)
{
 struct dss_pll *pll = &hpll->pll;
 struct clk *clk;
 int r;

 clk = devm_clk_get(&pdev->dev, "sys_clk");
 if (IS_ERR(clk)) {
  DSSERR("can't get sys_clk\n");
  return PTR_ERR(clk);
 }

 pll->name = "hdmi";
 pll->id = DSS_PLL_HDMI;
 pll->base = hpll->base;
 pll->clkin = clk;

 switch (omapdss_get_version()) {
 case 130:
 case 129:
 case 131:
  pll->hw = &dss_omap4_hdmi_pll_hw;
  break;

 case 128:
 case 132:
  pll->hw = &dss_omap5_hdmi_pll_hw;
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
