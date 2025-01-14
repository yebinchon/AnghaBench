
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int flags; int end; int start; int name; } ;
struct platform_device_info {int num_res; int size_data; struct musb_hdrc_platform_data* data; struct resource* res; int * parent; } ;
struct platform_device {int dev; TYPE_1__* resource; } ;
struct musb_hdrc_platform_data {int * platform_ops; } ;
struct davinci_glue {struct platform_device* musb; struct platform_device* clk; int * dev; } ;
struct clk {int dev; TYPE_1__* resource; } ;
struct TYPE_2__ {int flags; int end; int start; int name; } ;


 int ARRAY_SIZE (struct resource*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct platform_device*) ;
 int PTR_ERR (struct platform_device*) ;
 int clk_disable (struct platform_device*) ;
 int clk_enable (struct platform_device*) ;
 struct platform_device_info davinci_dev_info ;
 int davinci_ops ;
 int dev_err (int *,char*,...) ;
 struct musb_hdrc_platform_data* dev_get_platdata (int *) ;
 struct platform_device* devm_clk_get (int *,char*) ;
 struct davinci_glue* devm_kzalloc (int *,int,int ) ;
 int memset (struct resource*,int,int) ;
 struct platform_device* platform_device_register_full (struct platform_device_info*) ;
 int platform_set_drvdata (struct platform_device*,struct davinci_glue*) ;
 int usb_phy_generic_register () ;

__attribute__((used)) static int davinci_probe(struct platform_device *pdev)
{
 struct resource musb_resources[3];
 struct musb_hdrc_platform_data *pdata = dev_get_platdata(&pdev->dev);
 struct platform_device *musb;
 struct davinci_glue *glue;
 struct platform_device_info pinfo;
 struct clk *clk;

 int ret = -ENOMEM;

 glue = devm_kzalloc(&pdev->dev, sizeof(*glue), GFP_KERNEL);
 if (!glue)
  goto err0;

 clk = devm_clk_get(&pdev->dev, "usb");
 if (IS_ERR(clk)) {
  dev_err(&pdev->dev, "failed to get clock\n");
  ret = PTR_ERR(clk);
  goto err0;
 }

 ret = clk_enable(clk);
 if (ret) {
  dev_err(&pdev->dev, "failed to enable clock\n");
  goto err0;
 }

 glue->dev = &pdev->dev;
 glue->clk = clk;

 pdata->platform_ops = &davinci_ops;

 usb_phy_generic_register();
 platform_set_drvdata(pdev, glue);

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





 musb_resources[2].name = pdev->resource[2].name;
 musb_resources[2].start = pdev->resource[2].start;
 musb_resources[2].end = pdev->resource[2].end;
 musb_resources[2].flags = pdev->resource[2].flags;

 pinfo = davinci_dev_info;
 pinfo.parent = &pdev->dev;
 pinfo.res = musb_resources;
 pinfo.num_res = ARRAY_SIZE(musb_resources);
 pinfo.data = pdata;
 pinfo.size_data = sizeof(*pdata);

 glue->musb = musb = platform_device_register_full(&pinfo);
 if (IS_ERR(musb)) {
  ret = PTR_ERR(musb);
  dev_err(&pdev->dev, "failed to register musb device: %d\n", ret);
  goto err1;
 }

 return 0;

err1:
 clk_disable(clk);

err0:
 return ret;
}
