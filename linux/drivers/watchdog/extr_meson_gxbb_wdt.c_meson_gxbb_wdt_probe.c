
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_5__ {int min_timeout; int timeout; int max_hw_heartbeat_ms; int * ops; int * info; struct device* parent; } ;
struct meson_gxbb_wdt {TYPE_1__ wdt_dev; scalar_t__ reg_base; scalar_t__ clk; } ;


 int DEFAULT_TIMEOUT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GXBB_WDT_CTRL_CLKDIV_EN ;
 int GXBB_WDT_CTRL_CLK_EN ;
 int GXBB_WDT_CTRL_DIV_MASK ;
 int GXBB_WDT_CTRL_EE_RESET ;
 scalar_t__ GXBB_WDT_CTRL_REG ;
 int GXBB_WDT_TCNT_SETUP_MASK ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int clk_get_rate (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int devm_add_action_or_reset (struct device*,int ,scalar_t__) ;
 scalar_t__ devm_clk_get (struct device*,int *) ;
 struct meson_gxbb_wdt* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_watchdog_register_device (struct device*,TYPE_1__*) ;
 int meson_clk_disable_unprepare ;
 int meson_gxbb_wdt_info ;
 int meson_gxbb_wdt_ops ;
 int meson_gxbb_wdt_set_timeout (TYPE_1__*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct meson_gxbb_wdt*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct meson_gxbb_wdt*) ;
 int watchdog_stop_on_reboot (TYPE_1__*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int meson_gxbb_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct meson_gxbb_wdt *data;
 int ret;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->reg_base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(data->reg_base))
  return PTR_ERR(data->reg_base);

 data->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(data->clk))
  return PTR_ERR(data->clk);

 ret = clk_prepare_enable(data->clk);
 if (ret)
  return ret;
 ret = devm_add_action_or_reset(dev, meson_clk_disable_unprepare,
           data->clk);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, data);

 data->wdt_dev.parent = dev;
 data->wdt_dev.info = &meson_gxbb_wdt_info;
 data->wdt_dev.ops = &meson_gxbb_wdt_ops;
 data->wdt_dev.max_hw_heartbeat_ms = GXBB_WDT_TCNT_SETUP_MASK;
 data->wdt_dev.min_timeout = 1;
 data->wdt_dev.timeout = DEFAULT_TIMEOUT;
 watchdog_set_drvdata(&data->wdt_dev, data);


 writel(((clk_get_rate(data->clk) / 1000) & GXBB_WDT_CTRL_DIV_MASK) |
  GXBB_WDT_CTRL_EE_RESET |
  GXBB_WDT_CTRL_CLK_EN |
  GXBB_WDT_CTRL_CLKDIV_EN,
  data->reg_base + GXBB_WDT_CTRL_REG);

 meson_gxbb_wdt_set_timeout(&data->wdt_dev, data->wdt_dev.timeout);

 watchdog_stop_on_reboot(&data->wdt_dev);
 return devm_watchdog_register_device(dev, &data->wdt_dev);
}
