
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int * dsi; } ;
struct omap_dss_device {char* name; int owner; TYPE_1__ ops; int dispc_channel; int output_type; int id; int * dev; } ;
struct dsi_data {scalar_t__ module_id; struct omap_dss_device output; } ;


 int OMAP_DISPLAY_TYPE_DSI ;
 int OMAP_DSS_OUTPUT_DSI1 ;
 int OMAP_DSS_OUTPUT_DSI2 ;
 int THIS_MODULE ;
 int dsi_get_channel (scalar_t__) ;
 struct dsi_data* dsi_get_dsidrv_data (struct platform_device*) ;
 int dsi_ops ;
 int omapdss_register_output (struct omap_dss_device*) ;

__attribute__((used)) static void dsi_init_output(struct platform_device *dsidev)
{
 struct dsi_data *dsi = dsi_get_dsidrv_data(dsidev);
 struct omap_dss_device *out = &dsi->output;

 out->dev = &dsidev->dev;
 out->id = dsi->module_id == 0 ?
   OMAP_DSS_OUTPUT_DSI1 : OMAP_DSS_OUTPUT_DSI2;

 out->output_type = OMAP_DISPLAY_TYPE_DSI;
 out->name = dsi->module_id == 0 ? "dsi.0" : "dsi.1";
 out->dispc_channel = dsi_get_channel(dsi->module_id);
 out->ops.dsi = &dsi_ops;
 out->owner = THIS_MODULE;

 omapdss_register_output(out);
}
