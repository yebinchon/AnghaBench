
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int * sdi; } ;
struct omap_dss_device {char* name; int port_num; int owner; TYPE_1__ ops; int dispc_channel; int output_type; int id; int * dev; } ;
struct TYPE_4__ {struct omap_dss_device output; } ;


 int OMAP_DISPLAY_TYPE_SDI ;
 int OMAP_DSS_CHANNEL_LCD ;
 int OMAP_DSS_OUTPUT_SDI ;
 int THIS_MODULE ;
 int omapdss_register_output (struct omap_dss_device*) ;
 TYPE_2__ sdi ;
 int sdi_ops ;

__attribute__((used)) static void sdi_init_output(struct platform_device *pdev)
{
 struct omap_dss_device *out = &sdi.output;

 out->dev = &pdev->dev;
 out->id = OMAP_DSS_OUTPUT_SDI;
 out->output_type = OMAP_DISPLAY_TYPE_SDI;
 out->name = "sdi.0";
 out->dispc_channel = OMAP_DSS_CHANNEL_LCD;

 out->port_num = 1;
 out->ops.sdi = &sdi_ops;
 out->owner = THIS_MODULE;

 omapdss_register_output(out);
}
