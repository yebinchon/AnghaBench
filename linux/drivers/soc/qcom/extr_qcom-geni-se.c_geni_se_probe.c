
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct geni_wrapper {TYPE_1__* ahb_clks; int base; struct device* dev; } ;
struct TYPE_2__ {char* id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int NUM_AHB_CLKS ;
 int PTR_ERR (int ) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,int) ;
 int dev_set_drvdata (struct device*,struct geni_wrapper*) ;
 int devm_clk_bulk_get (struct device*,int ,TYPE_1__*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct geni_wrapper* devm_kzalloc (struct device*,int,int ) ;
 int devm_of_platform_populate (struct device*) ;
 int has_acpi_companion (struct device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;

__attribute__((used)) static int geni_se_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct resource *res;
 struct geni_wrapper *wrapper;
 int ret;

 wrapper = devm_kzalloc(dev, sizeof(*wrapper), GFP_KERNEL);
 if (!wrapper)
  return -ENOMEM;

 wrapper->dev = dev;
 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 wrapper->base = devm_ioremap_resource(dev, res);
 if (IS_ERR(wrapper->base))
  return PTR_ERR(wrapper->base);

 if (!has_acpi_companion(&pdev->dev)) {
  wrapper->ahb_clks[0].id = "m-ahb";
  wrapper->ahb_clks[1].id = "s-ahb";
  ret = devm_clk_bulk_get(dev, NUM_AHB_CLKS, wrapper->ahb_clks);
  if (ret) {
   dev_err(dev, "Err getting AHB clks %d\n", ret);
   return ret;
  }
 }

 dev_set_drvdata(dev, wrapper);
 dev_dbg(dev, "GENI SE Driver probed\n");
 return devm_of_platform_populate(dev);
}
