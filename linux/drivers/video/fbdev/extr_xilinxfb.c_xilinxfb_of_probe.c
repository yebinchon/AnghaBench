
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xilinxfb_platform_data {int rotate_screen; scalar_t__ yvirt; scalar_t__ xvirt; scalar_t__ yres; scalar_t__ xres; scalar_t__ screen_height_mm; scalar_t__ screen_width_mm; } ;
struct xilinxfb_drvdata {int dcr_host; int dcr_len; int flags; } ;
struct TYPE_4__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int BUS_ACCESS_FLAG ;
 int DCR_MAP_OK (int ) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dcr_map (int ,int,int ) ;
 int dcr_resource_len (int ,int ) ;
 int dcr_resource_start (int ,int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_set_drvdata (TYPE_1__*,struct xilinxfb_drvdata*) ;
 struct xilinxfb_drvdata* devm_kzalloc (TYPE_1__*,int,int ) ;
 scalar_t__ of_find_property (int ,char*,int *) ;
 scalar_t__* of_get_property (int ,char*,int*) ;
 int of_property_read_u32 (int ,char*,scalar_t__*) ;
 struct xilinxfb_platform_data xilinx_fb_default_pdata ;
 int xilinxfb_assign (struct platform_device*,struct xilinxfb_drvdata*,struct xilinxfb_platform_data*) ;

__attribute__((used)) static int xilinxfb_of_probe(struct platform_device *pdev)
{
 const u32 *prop;
 u32 tft_access = 0;
 struct xilinxfb_platform_data pdata;
 int size;
 struct xilinxfb_drvdata *drvdata;


 pdata = xilinx_fb_default_pdata;


 drvdata = devm_kzalloc(&pdev->dev, sizeof(*drvdata), GFP_KERNEL);
 if (!drvdata)
  return -ENOMEM;





 of_property_read_u32(pdev->dev.of_node, "xlnx,dcr-splb-slave-if",
        &tft_access);





 if (tft_access)
  drvdata->flags |= BUS_ACCESS_FLAG;
 prop = of_get_property(pdev->dev.of_node, "phys-size", &size);
 if ((prop) && (size >= sizeof(u32) * 2)) {
  pdata.screen_width_mm = prop[0];
  pdata.screen_height_mm = prop[1];
 }

 prop = of_get_property(pdev->dev.of_node, "resolution", &size);
 if ((prop) && (size >= sizeof(u32) * 2)) {
  pdata.xres = prop[0];
  pdata.yres = prop[1];
 }

 prop = of_get_property(pdev->dev.of_node, "virtual-resolution", &size);
 if ((prop) && (size >= sizeof(u32) * 2)) {
  pdata.xvirt = prop[0];
  pdata.yvirt = prop[1];
 }

 if (of_find_property(pdev->dev.of_node, "rotate-display", ((void*)0)))
  pdata.rotate_screen = 1;

 dev_set_drvdata(&pdev->dev, drvdata);
 return xilinxfb_assign(pdev, drvdata, &pdata);
}
