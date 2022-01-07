
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct resource {int flags; int end; int start; int name; } ;
struct platform_device_info {int num_res; int size_data; struct musb_hdrc_platform_data* data; struct resource* res; TYPE_2__* parent; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; TYPE_1__* resource; } ;
struct musb_hdrc_platform_data {int * platform_ops; int power; int mode; int * config; } ;
struct device_node {int dummy; } ;
struct da8xx_glue {int usb_phy; int musb; struct clk* clk; TYPE_2__* dev; struct clk* phy; } ;
struct clk {int dummy; } ;
struct TYPE_10__ {int flags; int end; int start; int name; } ;


 int ARRAY_SIZE (struct resource*) ;
 int CONFIG_OF ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int PTR_ERR_OR_ZERO (int ) ;
 int da8xx_auxdata_lookup ;
 int da8xx_config ;
 struct platform_device_info da8xx_dev_info ;
 int da8xx_ops ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct musb_hdrc_platform_data* dev_get_platdata (TYPE_2__*) ;
 struct clk* devm_clk_get (TYPE_2__*,int *) ;
 void* devm_kzalloc (TYPE_2__*,int,int ) ;
 struct clk* devm_phy_get (TYPE_2__*,char*) ;
 int get_vbus_power (TYPE_2__*) ;
 int memset (struct resource*,int,int) ;
 int musb_get_mode (TYPE_2__*) ;
 int of_platform_populate (struct device_node*,int *,int ,TYPE_2__*) ;
 int platform_device_register_full (struct platform_device_info*) ;
 int platform_set_drvdata (struct platform_device*,struct da8xx_glue*) ;
 int usb_phy_generic_register () ;
 int usb_phy_generic_unregister (int ) ;

__attribute__((used)) static int da8xx_probe(struct platform_device *pdev)
{
 struct resource musb_resources[2];
 struct musb_hdrc_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct da8xx_glue *glue;
 struct platform_device_info pinfo;
 struct clk *clk;
 struct device_node *np = pdev->dev.of_node;
 int ret;

 glue = devm_kzalloc(&pdev->dev, sizeof(*glue), GFP_KERNEL);
 if (!glue)
  return -ENOMEM;

 clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(clk)) {
  dev_err(&pdev->dev, "failed to get clock\n");
  return PTR_ERR(clk);
 }

 glue->phy = devm_phy_get(&pdev->dev, "usb-phy");
 if (IS_ERR(glue->phy)) {
  if (PTR_ERR(glue->phy) != -EPROBE_DEFER)
   dev_err(&pdev->dev, "failed to get phy\n");
  return PTR_ERR(glue->phy);
 }

 glue->dev = &pdev->dev;
 glue->clk = clk;

 if (IS_ENABLED(CONFIG_OF) && np) {
  pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
  if (!pdata)
   return -ENOMEM;

  pdata->config = &da8xx_config;
  pdata->mode = musb_get_mode(&pdev->dev);
  pdata->power = get_vbus_power(&pdev->dev);
 }

 pdata->platform_ops = &da8xx_ops;

 glue->usb_phy = usb_phy_generic_register();
 ret = PTR_ERR_OR_ZERO(glue->usb_phy);
 if (ret) {
  dev_err(&pdev->dev, "failed to register usb_phy\n");
  return ret;
 }
 platform_set_drvdata(pdev, glue);

 ret = of_platform_populate(pdev->dev.of_node, ((void*)0),
       da8xx_auxdata_lookup, &pdev->dev);
 if (ret)
  return ret;

 memset(musb_resources, 0x00, sizeof(*musb_resources) *
   ARRAY_SIZE(musb_resources));

 musb_resources[0].name = pdev->resource[0].name;
 musb_resources[0].start = pdev->resource[0].start;
 musb_resources[0].end = pdev->resource[0].end;
 musb_resources[0].flags = pdev->resource[0].flags;

 musb_resources[1].name = pdev->resource[1].name;
 musb_resources[1].start = pdev->resource[1].start;
 musb_resources[1].end = pdev->resource[1].end;
 musb_resources[1].flags = pdev->resource[1].flags;

 pinfo = da8xx_dev_info;
 pinfo.parent = &pdev->dev;
 pinfo.res = musb_resources;
 pinfo.num_res = ARRAY_SIZE(musb_resources);
 pinfo.data = pdata;
 pinfo.size_data = sizeof(*pdata);

 glue->musb = platform_device_register_full(&pinfo);
 ret = PTR_ERR_OR_ZERO(glue->musb);
 if (ret) {
  dev_err(&pdev->dev, "failed to register musb device: %d\n", ret);
  usb_phy_generic_unregister(glue->usb_phy);
 }

 return ret;
}
