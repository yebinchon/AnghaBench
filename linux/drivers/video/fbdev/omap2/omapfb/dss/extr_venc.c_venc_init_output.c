
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int * atv; } ;
struct omap_dss_device {char* name; int owner; TYPE_1__ ops; int dispc_channel; int output_type; int id; int * dev; } ;
struct TYPE_4__ {struct omap_dss_device output; } ;


 int OMAP_DISPLAY_TYPE_VENC ;
 int OMAP_DSS_CHANNEL_DIGIT ;
 int OMAP_DSS_OUTPUT_VENC ;
 int THIS_MODULE ;
 int omapdss_register_output (struct omap_dss_device*) ;
 TYPE_2__ venc ;
 int venc_ops ;

__attribute__((used)) static void venc_init_output(struct platform_device *pdev)
{
 struct omap_dss_device *out = &venc.output;

 out->dev = &pdev->dev;
 out->id = OMAP_DSS_OUTPUT_VENC;
 out->output_type = OMAP_DISPLAY_TYPE_VENC;
 out->name = "venc.0";
 out->dispc_channel = OMAP_DSS_CHANNEL_DIGIT;
 out->ops.atv = &venc_ops;
 out->owner = THIS_MODULE;

 omapdss_register_output(out);
}
