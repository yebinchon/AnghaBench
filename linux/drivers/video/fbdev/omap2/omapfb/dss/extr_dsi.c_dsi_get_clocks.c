
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dsi_data {struct clk* dss_clk; } ;
struct clk {int dummy; } ;


 int DSSERR (char*) ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* devm_clk_get (int *,char*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;

__attribute__((used)) static int dsi_get_clocks(struct platform_device *dsidev)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 struct clk *clk;

 clk = devm_clk_get(&dsidev->dev, "fck");
 if (IS_ERR(clk)) {
  DSSERR("can't get fck\n");
  return PTR_ERR(clk);
 }

 dsi->dss_clk = clk;

 return 0;
}
