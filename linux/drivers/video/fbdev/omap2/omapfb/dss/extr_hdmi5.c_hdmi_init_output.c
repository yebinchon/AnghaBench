
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int * hdmi; } ;
struct omap_dss_device {char* name; int owner; TYPE_1__ ops; int dispc_channel; int output_type; int id; int * dev; } ;
struct TYPE_4__ {struct omap_dss_device output; } ;


 int OMAP_DISPLAY_TYPE_HDMI ;
 int OMAP_DSS_CHANNEL_DIGIT ;
 int OMAP_DSS_OUTPUT_HDMI ;
 int THIS_MODULE ;
 TYPE_2__ hdmi ;
 int hdmi_ops ;
 int omapdss_register_output (struct omap_dss_device*) ;

__attribute__((used)) static void hdmi_init_output(struct platform_device *pdev)
{
 struct omap_dss_device *out = &hdmi.output;

 out->dev = &pdev->dev;
 out->id = OMAP_DSS_OUTPUT_HDMI;
 out->output_type = OMAP_DISPLAY_TYPE_HDMI;
 out->name = "hdmi.0";
 out->dispc_channel = OMAP_DSS_CHANNEL_DIGIT;
 out->ops.hdmi = &hdmi_ops;
 out->owner = THIS_MODULE;

 omapdss_register_output(out);
}
