
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {struct clk* tv_dac_clk; } ;


 int DSSERR (char*) ;
 int FEAT_VENC_REQUIRES_TV_DAC_CLK ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 struct clk* devm_clk_get (int *,char*) ;
 scalar_t__ dss_has_feature (int ) ;
 TYPE_1__ venc ;

__attribute__((used)) static int venc_get_clocks(struct platform_device *pdev)
{
 struct clk *clk;

 if (dss_has_feature(FEAT_VENC_REQUIRES_TV_DAC_CLK)) {
  clk = devm_clk_get(&pdev->dev, "tv_dac_clk");
  if (IS_ERR(clk)) {
   DSSERR("can't get tv_dac_clk\n");
   return PTR_ERR(clk);
  }
 } else {
  clk = ((void*)0);
 }

 venc.tv_dac_clk = clk;

 return 0;
}
