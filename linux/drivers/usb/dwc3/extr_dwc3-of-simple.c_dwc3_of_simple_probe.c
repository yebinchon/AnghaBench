
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct dwc3_of_simple {int need_reset; int pulse_resets; int num_clocks; int resets; int clks; struct device* dev; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_bulk_disable_unprepare (int,int ) ;
 int clk_bulk_get_all (struct device*,int *) ;
 int clk_bulk_prepare_enable (int,int ) ;
 int clk_bulk_put_all (int,int ) ;
 int dev_err (struct device*,char*,int) ;
 struct dwc3_of_simple* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 int of_platform_populate (struct device_node*,int *,int *,struct device*) ;
 int of_reset_control_array_get (struct device_node*,int,int,int) ;
 int platform_set_drvdata (struct platform_device*,struct dwc3_of_simple*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_set_active (struct device*) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int reset_control_put (int ) ;
 int reset_control_reset (int ) ;

__attribute__((used)) static int dwc3_of_simple_probe(struct platform_device *pdev)
{
 struct dwc3_of_simple *simple;
 struct device *dev = &pdev->dev;
 struct device_node *np = dev->of_node;

 int ret;
 bool shared_resets = 0;

 simple = devm_kzalloc(dev, sizeof(*simple), GFP_KERNEL);
 if (!simple)
  return -ENOMEM;

 platform_set_drvdata(pdev, simple);
 simple->dev = dev;





 if (of_device_is_compatible(np, "rockchip,rk3399-dwc3"))
  simple->need_reset = 1;

 if (of_device_is_compatible(np, "amlogic,meson-axg-dwc3") ||
     of_device_is_compatible(np, "amlogic,meson-gxl-dwc3")) {
  shared_resets = 1;
  simple->pulse_resets = 1;
 }

 simple->resets = of_reset_control_array_get(np, shared_resets, 1,
          1);
 if (IS_ERR(simple->resets)) {
  ret = PTR_ERR(simple->resets);
  dev_err(dev, "failed to get device resets, err=%d\n", ret);
  return ret;
 }

 if (simple->pulse_resets) {
  ret = reset_control_reset(simple->resets);
  if (ret)
   goto err_resetc_put;
 } else {
  ret = reset_control_deassert(simple->resets);
  if (ret)
   goto err_resetc_put;
 }

 ret = clk_bulk_get_all(simple->dev, &simple->clks);
 if (ret < 0)
  goto err_resetc_assert;

 simple->num_clocks = ret;
 ret = clk_bulk_prepare_enable(simple->num_clocks, simple->clks);
 if (ret)
  goto err_resetc_assert;

 ret = of_platform_populate(np, ((void*)0), ((void*)0), dev);
 if (ret)
  goto err_clk_put;

 pm_runtime_set_active(dev);
 pm_runtime_enable(dev);
 pm_runtime_get_sync(dev);

 return 0;

err_clk_put:
 clk_bulk_disable_unprepare(simple->num_clocks, simple->clks);
 clk_bulk_put_all(simple->num_clocks, simple->clks);

err_resetc_assert:
 if (!simple->pulse_resets)
  reset_control_assert(simple->resets);

err_resetc_put:
 reset_control_put(simple->resets);
 return ret;
}
