
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_overlay_manager {int id; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {struct omap_overlay_manager* manager; } ;
struct dpi_data {int lock; int vdds_dsi_reg; scalar_t__ pll; TYPE_1__ output; } ;


 int FEAT_DPI_USES_VDDS_DSI ;
 int OMAP_DSS_CLK_SRC_FCK ;
 int dispc_runtime_put () ;
 struct dpi_data* dpi_get_data_from_dssdev (struct omap_dss_device*) ;
 scalar_t__ dss_has_feature (int ) ;
 int dss_mgr_disable (struct omap_overlay_manager*) ;
 int dss_pll_disable (scalar_t__) ;
 int dss_select_lcd_clk_source (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void dpi_display_disable(struct omap_dss_device *dssdev)
{
 struct dpi_data *dpi = dpi_get_data_from_dssdev(dssdev);
 struct omap_overlay_manager *mgr = dpi->output.manager;

 mutex_lock(&dpi->lock);

 dss_mgr_disable(mgr);

 if (dpi->pll) {
  dss_select_lcd_clk_source(mgr->id, OMAP_DSS_CLK_SRC_FCK);
  dss_pll_disable(dpi->pll);
 }

 dispc_runtime_put();

 if (dss_has_feature(FEAT_DPI_USES_VDDS_DSI))
  regulator_disable(dpi->vdds_dsi_reg);

 mutex_unlock(&dpi->lock);
}
