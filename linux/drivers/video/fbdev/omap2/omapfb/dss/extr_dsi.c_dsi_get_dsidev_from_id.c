
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct omap_dss_device {int dev; } ;
typedef enum omap_dss_output_id { ____Placeholder_omap_dss_output_id } omap_dss_output_id ;


 int OMAP_DSS_OUTPUT_DSI1 ;
 int OMAP_DSS_OUTPUT_DSI2 ;
 struct omap_dss_device* omap_dss_get_output (int) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static struct platform_device *dsi_get_dsidev_from_id(int module)
{
 struct omap_dss_device *out;
 enum omap_dss_output_id id;

 switch (module) {
 case 0:
  id = OMAP_DSS_OUTPUT_DSI1;
  break;
 case 1:
  id = OMAP_DSS_OUTPUT_DSI2;
  break;
 default:
  return ((void*)0);
 }

 out = omap_dss_get_output(id);

 return out ? to_platform_device(out->dev) : ((void*)0);
}
