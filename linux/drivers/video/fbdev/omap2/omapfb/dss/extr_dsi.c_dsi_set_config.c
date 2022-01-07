
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct omap_dss_dsi_config {scalar_t__ mode; int lp_clk_max; int lp_clk_min; int pixel_format; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int * clkout; } ;
struct dsi_data {scalar_t__ mode; int lock; int vm_timings; int timings; int user_dispc_cinfo; TYPE_1__ user_dsi_cinfo; int user_lp_cinfo; int pix_fmt; } ;
struct dsi_clk_calc_ctx {int dsi_vm; int dispc_vm; int dispc_cinfo; TYPE_1__ dsi_cinfo; } ;


 int DSSERR (char*) ;
 int EINVAL ;
 size_t HSDIV_DSI ;
 scalar_t__ OMAP_DSS_DSI_VIDEO_MODE ;
 int dsi_cm_calc (struct dsi_data*,struct omap_dss_dsi_config const*,struct dsi_clk_calc_ctx*) ;
 struct platform_device* dsi_get_dsidev_from_dssdev (struct omap_dss_device*) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_lp_clock_calc (int ,int ,int ,int *) ;
 int dsi_pll_calc_dsi_fck (TYPE_1__*) ;
 int dsi_vm_calc (struct dsi_data*,struct omap_dss_dsi_config const*,struct dsi_clk_calc_ctx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dsi_set_config(struct omap_dss_device *dssdev,
  const struct omap_dss_dsi_config *config)
{
 struct platform_device *dsidev = dsi_get_dsidev_from_dssdev(dssdev);
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 struct dsi_clk_calc_ctx ctx;
 bool ok;
 int r;

 mutex_lock(&dsi->lock);

 dsi->pix_fmt = config->pixel_format;
 dsi->mode = config->mode;

 if (config->mode == OMAP_DSS_DSI_VIDEO_MODE)
  ok = dsi_vm_calc(dsi, config, &ctx);
 else
  ok = dsi_cm_calc(dsi, config, &ctx);

 if (!ok) {
  DSSERR("failed to find suitable DSI clock settings\n");
  r = -EINVAL;
  goto err;
 }

 dsi_pll_calc_dsi_fck(&ctx.dsi_cinfo);

 r = dsi_lp_clock_calc(ctx.dsi_cinfo.clkout[HSDIV_DSI],
  config->lp_clk_min, config->lp_clk_max, &dsi->user_lp_cinfo);
 if (r) {
  DSSERR("failed to find suitable DSI LP clock settings\n");
  goto err;
 }

 dsi->user_dsi_cinfo = ctx.dsi_cinfo;
 dsi->user_dispc_cinfo = ctx.dispc_cinfo;

 dsi->timings = ctx.dispc_vm;
 dsi->vm_timings = ctx.dsi_vm;

 mutex_unlock(&dsi->lock);

 return 0;
err:
 mutex_unlock(&dsi->lock);

 return r;
}
