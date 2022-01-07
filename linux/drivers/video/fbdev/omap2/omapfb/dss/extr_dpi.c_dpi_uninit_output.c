
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct dpi_data {struct omap_dss_device output; } ;


 struct dpi_data* dpi_get_data_from_pdev (struct platform_device*) ;
 int omapdss_unregister_output (struct omap_dss_device*) ;

__attribute__((used)) static void dpi_uninit_output(struct platform_device *pdev)
{
 struct dpi_data *dpi = dpi_get_data_from_pdev(pdev);
 struct omap_dss_device *out = &dpi->output;

 omapdss_unregister_output(out);
}
