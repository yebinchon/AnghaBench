
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {TYPE_1__* manager; int port_num; } ;
struct dpi_data {int lock; int vdds_dsi_reg; scalar_t__ pll; struct omap_dss_device output; } ;
struct TYPE_2__ {int id; } ;


 int DSSERR (char*) ;
 int ENODEV ;
 int FEAT_DPI_USES_VDDS_DSI ;
 int dispc_runtime_get () ;
 int dispc_runtime_put () ;
 int dpi_config_lcd_manager (struct dpi_data*) ;
 struct dpi_data* dpi_get_data_from_dssdev (struct omap_dss_device*) ;
 int dpi_set_mode (struct dpi_data*) ;
 int dss_dpi_select_source (int ,int ) ;
 scalar_t__ dss_has_feature (int ) ;
 int dss_mgr_enable (TYPE_1__*) ;
 int dss_pll_disable (scalar_t__) ;
 int dss_pll_enable (scalar_t__) ;
 int mdelay (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int dpi_display_enable(struct omap_dss_device *dssdev)
{
 struct dpi_data *dpi = dpi_get_data_from_dssdev(dssdev);
 struct omap_dss_device *out = &dpi->output;
 int r;

 mutex_lock(&dpi->lock);

 if (dss_has_feature(FEAT_DPI_USES_VDDS_DSI) && !dpi->vdds_dsi_reg) {
  DSSERR("no VDSS_DSI regulator\n");
  r = -ENODEV;
  goto err_no_reg;
 }

 if (out->manager == ((void*)0)) {
  DSSERR("failed to enable display: no output/manager\n");
  r = -ENODEV;
  goto err_no_out_mgr;
 }

 if (dss_has_feature(FEAT_DPI_USES_VDDS_DSI)) {
  r = regulator_enable(dpi->vdds_dsi_reg);
  if (r)
   goto err_reg_enable;
 }

 r = dispc_runtime_get();
 if (r)
  goto err_get_dispc;

 r = dss_dpi_select_source(out->port_num, out->manager->id);
 if (r)
  goto err_src_sel;

 if (dpi->pll) {
  r = dss_pll_enable(dpi->pll);
  if (r)
   goto err_dsi_pll_init;
 }

 r = dpi_set_mode(dpi);
 if (r)
  goto err_set_mode;

 dpi_config_lcd_manager(dpi);

 mdelay(2);

 r = dss_mgr_enable(out->manager);
 if (r)
  goto err_mgr_enable;

 mutex_unlock(&dpi->lock);

 return 0;

err_mgr_enable:
err_set_mode:
 if (dpi->pll)
  dss_pll_disable(dpi->pll);
err_dsi_pll_init:
err_src_sel:
 dispc_runtime_put();
err_get_dispc:
 if (dss_has_feature(FEAT_DPI_USES_VDDS_DSI))
  regulator_disable(dpi->vdds_dsi_reg);
err_reg_enable:
err_no_out_mgr:
err_no_reg:
 mutex_unlock(&dpi->lock);
 return r;
}
