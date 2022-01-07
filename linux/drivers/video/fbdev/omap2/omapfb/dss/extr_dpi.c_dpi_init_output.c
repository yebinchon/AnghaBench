
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int * dpi; } ;
struct omap_dss_device {char* name; int owner; TYPE_1__ ops; int dispc_channel; int output_type; int id; int * dev; } ;
struct dpi_data {struct omap_dss_device output; } ;


 int OMAP_DISPLAY_TYPE_DPI ;
 int OMAP_DSS_OUTPUT_DPI ;
 int THIS_MODULE ;
 int dpi_get_channel (int ) ;
 struct dpi_data* dpi_get_data_from_pdev (struct platform_device*) ;
 int dpi_ops ;
 int omapdss_register_output (struct omap_dss_device*) ;

__attribute__((used)) static void dpi_init_output(struct platform_device *pdev)
{
 struct dpi_data *dpi = dpi_get_data_from_pdev(pdev);
 struct omap_dss_device *out = &dpi->output;

 out->dev = &pdev->dev;
 out->id = OMAP_DSS_OUTPUT_DPI;
 out->output_type = OMAP_DISPLAY_TYPE_DPI;
 out->name = "dpi.0";
 out->dispc_channel = dpi_get_channel(0);
 out->ops.dpi = &dpi_ops;
 out->owner = THIS_MODULE;

 omapdss_register_output(out);
}
