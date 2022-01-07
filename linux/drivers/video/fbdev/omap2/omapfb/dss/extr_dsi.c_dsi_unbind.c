
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dsi_data {scalar_t__ scp_clk_refcount; int vdds_dsi_enabled; int * vdds_dsi_reg; int pll; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_uninit_output (struct platform_device*) ;
 int dss_pll_unregister (int *) ;
 int of_platform_depopulate (int *) ;
 int pm_runtime_disable (int *) ;
 int regulator_disable (int *) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static void dsi_unbind(struct device *dev, struct device *master, void *data)
{
 struct platform_device *dsidev = to_platform_device(dev);
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);

 of_platform_depopulate(&dsidev->dev);

 WARN_ON(dsi->scp_clk_refcount > 0);

 dss_pll_unregister(&dsi->pll);

 dsi_uninit_output(dsidev);

 pm_runtime_disable(&dsidev->dev);

 if (dsi->vdds_dsi_reg != ((void*)0) && dsi->vdds_dsi_enabled) {
  regulator_disable(dsi->vdds_dsi_reg);
  dsi->vdds_dsi_enabled = 0;
 }
}
