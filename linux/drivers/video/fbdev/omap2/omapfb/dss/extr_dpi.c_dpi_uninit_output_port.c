
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int dummy; } ;
struct dpi_data {struct omap_dss_device output; } ;
struct device_node {struct dpi_data* data; } ;


 int omapdss_unregister_output (struct omap_dss_device*) ;

__attribute__((used)) static void dpi_uninit_output_port(struct device_node *port)
{
 struct dpi_data *dpi = port->data;
 struct omap_dss_device *out = &dpi->output;

 omapdss_unregister_output(out);
}
