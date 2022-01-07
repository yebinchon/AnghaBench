
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct dsi_data {struct omap_dss_device output; } ;


 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int omapdss_unregister_output (struct omap_dss_device*) ;

__attribute__((used)) static void dsi_uninit_output(struct platform_device *dsidev)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 struct omap_dss_device *out = &dsi->output;

 omapdss_unregister_output(out);
}
