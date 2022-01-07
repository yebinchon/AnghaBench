
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int * dpi; } ;
struct omap_dss_device {char* name; int port_num; int owner; TYPE_1__ ops; int dispc_channel; int output_type; int id; int * dev; } ;
struct dpi_data {struct omap_dss_device output; } ;
struct device_node {struct dpi_data* data; } ;


 int OMAP_DISPLAY_TYPE_DPI ;
 int OMAP_DSS_OUTPUT_DPI ;
 int THIS_MODULE ;
 int dpi_get_channel (int) ;
 int dpi_ops ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int omapdss_register_output (struct omap_dss_device*) ;

__attribute__((used)) static void dpi_init_output_port(struct platform_device *pdev,
 struct device_node *port)
{
 struct dpi_data *dpi = port->data;
 struct omap_dss_device *out = &dpi->output;
 int r;
 u32 port_num;

 r = of_property_read_u32(port, "reg", &port_num);
 if (r)
  port_num = 0;

 switch (port_num) {
 case 2:
  out->name = "dpi.2";
  break;
 case 1:
  out->name = "dpi.1";
  break;
 case 0:
 default:
  out->name = "dpi.0";
  break;
 }

 out->dev = &pdev->dev;
 out->id = OMAP_DSS_OUTPUT_DPI;
 out->output_type = OMAP_DISPLAY_TYPE_DPI;
 out->dispc_channel = dpi_get_channel(port_num);
 out->port_num = port_num;
 out->ops.dpi = &dpi_ops;
 out->owner = THIS_MODULE;

 omapdss_register_output(out);
}
