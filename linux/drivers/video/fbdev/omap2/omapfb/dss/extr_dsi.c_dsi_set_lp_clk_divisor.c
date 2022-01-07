
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_3__ {unsigned long lp_clk; unsigned int lp_clk_div; } ;
struct TYPE_4__ {unsigned int lp_clk_div; } ;
struct dsi_data {TYPE_1__ current_lp_cinfo; TYPE_2__ user_lp_cinfo; } ;


 int DSI_CLK_CTRL ;
 int DSSDBG (char*,unsigned int,unsigned long) ;
 int EINVAL ;
 int FEAT_PARAM_DSIPLL_LPDIV ;
 int REG_FLD_MOD (struct platform_device*,int ,int,int,int) ;
 unsigned long dsi_fclk_rate (struct platform_device*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 unsigned int dss_feat_get_param_max (int ) ;

__attribute__((used)) static int dsi_set_lp_clk_divisor(struct platform_device *dsidev)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 unsigned long dsi_fclk;
 unsigned lp_clk_div;
 unsigned long lp_clk;
 unsigned lpdiv_max = dss_feat_get_param_max(FEAT_PARAM_DSIPLL_LPDIV);


 lp_clk_div = dsi->user_lp_cinfo.lp_clk_div;

 if (lp_clk_div == 0 || lp_clk_div > lpdiv_max)
  return -EINVAL;

 dsi_fclk = dsi_fclk_rate(dsidev);

 lp_clk = dsi_fclk / 2 / lp_clk_div;

 DSSDBG("LP_CLK_DIV %u, LP_CLK %lu\n", lp_clk_div, lp_clk);
 dsi->current_lp_cinfo.lp_clk = lp_clk;
 dsi->current_lp_cinfo.lp_clk_div = lp_clk_div;


 REG_FLD_MOD(dsidev, DSI_CLK_CTRL, lp_clk_div, 12, 0);


 REG_FLD_MOD(dsidev, DSI_CLK_CTRL, dsi_fclk > 30000000 ? 1 : 0, 21, 21);

 return 0;
}
