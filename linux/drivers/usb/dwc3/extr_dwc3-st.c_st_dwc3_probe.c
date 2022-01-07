
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_dwc3 {struct regmap* rstc_pwrdn; struct regmap* rstc_rst; int dr_mode; int syscfg_reg_off; struct regmap* glue_base; struct regmap* regmap; struct device* dev; } ;
struct resource {int start; } ;
struct regmap {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (struct device*,char*) ;
 int dev_vdbg (struct device*,char*,struct regmap*,int ) ;
 struct regmap* devm_ioremap_resource (struct device*,struct resource*) ;
 struct st_dwc3* devm_kzalloc (struct device*,int,int ) ;
 struct regmap* devm_reset_control_get_exclusive (struct device*,char*) ;
 struct regmap* devm_reset_control_get_shared (struct device*,char*) ;
 int of_dev_put (struct platform_device*) ;
 struct platform_device* of_find_device_by_node (struct device_node*) ;
 struct device_node* of_get_child_by_name (struct device_node*,char*) ;
 int of_node_put (struct device_node*) ;
 int of_platform_populate (struct device_node*,int *,int *,struct device*) ;
 int platform_device_put (struct platform_device*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int platform_set_drvdata (struct platform_device*,struct st_dwc3*) ;
 int reset_control_assert (struct regmap*) ;
 int reset_control_deassert (struct regmap*) ;
 int st_dwc3_drd_init (struct st_dwc3*) ;
 int st_dwc3_init (struct st_dwc3*) ;
 struct regmap* syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;
 int usb_get_dr_mode (struct device*) ;

__attribute__((used)) static int st_dwc3_probe(struct platform_device *pdev)
{
 struct st_dwc3 *dwc3_data;
 struct resource *res;
 struct device *dev = &pdev->dev;
 struct device_node *node = dev->of_node, *child;
 struct platform_device *child_pdev;
 struct regmap *regmap;
 int ret;

 dwc3_data = devm_kzalloc(dev, sizeof(*dwc3_data), GFP_KERNEL);
 if (!dwc3_data)
  return -ENOMEM;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "reg-glue");
 dwc3_data->glue_base = devm_ioremap_resource(dev, res);
 if (IS_ERR(dwc3_data->glue_base))
  return PTR_ERR(dwc3_data->glue_base);

 regmap = syscon_regmap_lookup_by_phandle(node, "st,syscfg");
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 dwc3_data->dev = dev;
 dwc3_data->regmap = regmap;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "syscfg-reg");
 if (!res) {
  ret = -ENXIO;
  goto undo_platform_dev_alloc;
 }

 dwc3_data->syscfg_reg_off = res->start;

 dev_vdbg(&pdev->dev, "glue-logic addr 0x%pK, syscfg-reg offset 0x%x\n",
   dwc3_data->glue_base, dwc3_data->syscfg_reg_off);

 dwc3_data->rstc_pwrdn =
  devm_reset_control_get_exclusive(dev, "powerdown");
 if (IS_ERR(dwc3_data->rstc_pwrdn)) {
  dev_err(&pdev->dev, "could not get power controller\n");
  ret = PTR_ERR(dwc3_data->rstc_pwrdn);
  goto undo_platform_dev_alloc;
 }


 reset_control_deassert(dwc3_data->rstc_pwrdn);

 dwc3_data->rstc_rst =
  devm_reset_control_get_shared(dev, "softreset");
 if (IS_ERR(dwc3_data->rstc_rst)) {
  dev_err(&pdev->dev, "could not get reset controller\n");
  ret = PTR_ERR(dwc3_data->rstc_rst);
  goto undo_powerdown;
 }


 reset_control_deassert(dwc3_data->rstc_rst);

 child = of_get_child_by_name(node, "dwc3");
 if (!child) {
  dev_err(&pdev->dev, "failed to find dwc3 core node\n");
  ret = -ENODEV;
  goto err_node_put;
 }


 ret = of_platform_populate(node, ((void*)0), ((void*)0), dev);
 if (ret) {
  dev_err(dev, "failed to add dwc3 core\n");
  goto err_node_put;
 }

 child_pdev = of_find_device_by_node(child);
 if (!child_pdev) {
  dev_err(dev, "failed to find dwc3 core device\n");
  ret = -ENODEV;
  goto err_node_put;
 }

 dwc3_data->dr_mode = usb_get_dr_mode(&child_pdev->dev);
 of_node_put(child);
 of_dev_put(child_pdev);







 ret = st_dwc3_drd_init(dwc3_data);
 if (ret) {
  dev_err(dev, "drd initialisation failed\n");
  goto undo_softreset;
 }


 st_dwc3_init(dwc3_data);

 platform_set_drvdata(pdev, dwc3_data);
 return 0;

err_node_put:
 of_node_put(child);
undo_softreset:
 reset_control_assert(dwc3_data->rstc_rst);
undo_powerdown:
 reset_control_assert(dwc3_data->rstc_pwrdn);
undo_platform_dev_alloc:
 platform_device_put(pdev);
 return ret;
}
