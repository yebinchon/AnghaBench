
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct watchdog_device {int min_timeout; int timeout; struct device* parent; int max_timeout; int * ops; TYPE_2__* info; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {int notifier_call; } ;
struct imx_sc_wdt_device {TYPE_1__ wdt_notifier; struct watchdog_device wdd; } ;
struct TYPE_5__ {int options; } ;


 int DEFAULT_TIMEOUT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_TIMEOUT ;
 int SC_IRQ_GROUP_WDOG ;
 int SC_IRQ_WDOG ;
 int WDIOF_PRETIMEOUT ;
 int dev_warn (struct device*,char*) ;
 int devm_add_action_or_reset (struct device*,int ,TYPE_1__*) ;
 struct imx_sc_wdt_device* devm_kzalloc (struct device*,int,int ) ;
 int devm_watchdog_register_device (struct device*,struct watchdog_device*) ;
 int imx_sc_wdt_action ;
 TYPE_2__ imx_sc_wdt_info ;
 int imx_sc_wdt_notify ;
 int imx_sc_wdt_ops ;
 int imx_scu_irq_group_enable (int ,int ,int) ;
 int imx_scu_irq_register_notifier (TYPE_1__*) ;
 int platform_set_drvdata (struct platform_device*,struct imx_sc_wdt_device*) ;
 int watchdog_init_timeout (struct watchdog_device*,int ,struct device*) ;
 int watchdog_stop_on_reboot (struct watchdog_device*) ;
 int watchdog_stop_on_unregister (struct watchdog_device*) ;

__attribute__((used)) static int imx_sc_wdt_probe(struct platform_device *pdev)
{
 struct imx_sc_wdt_device *imx_sc_wdd;
 struct watchdog_device *wdog;
 struct device *dev = &pdev->dev;
 int ret;

 imx_sc_wdd = devm_kzalloc(dev, sizeof(*imx_sc_wdd), GFP_KERNEL);
 if (!imx_sc_wdd)
  return -ENOMEM;

 platform_set_drvdata(pdev, imx_sc_wdd);

 wdog = &imx_sc_wdd->wdd;
 wdog->info = &imx_sc_wdt_info;
 wdog->ops = &imx_sc_wdt_ops;
 wdog->min_timeout = 1;
 wdog->max_timeout = MAX_TIMEOUT;
 wdog->parent = dev;
 wdog->timeout = DEFAULT_TIMEOUT;

 watchdog_init_timeout(wdog, 0, dev);
 watchdog_stop_on_reboot(wdog);
 watchdog_stop_on_unregister(wdog);

 ret = devm_watchdog_register_device(dev, wdog);
 if (ret)
  return ret;

 ret = imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
           SC_IRQ_WDOG,
           1);
 if (ret) {
  dev_warn(dev, "Enable irq failed, pretimeout NOT supported\n");
  return 0;
 }

 imx_sc_wdd->wdt_notifier.notifier_call = imx_sc_wdt_notify;
 ret = imx_scu_irq_register_notifier(&imx_sc_wdd->wdt_notifier);
 if (ret) {
  imx_scu_irq_group_enable(SC_IRQ_GROUP_WDOG,
      SC_IRQ_WDOG,
      0);
  dev_warn(dev,
    "Register irq notifier failed, pretimeout NOT supported\n");
  return 0;
 }

 ret = devm_add_action_or_reset(dev, imx_sc_wdt_action,
           &imx_sc_wdd->wdt_notifier);
 if (!ret)
  imx_sc_wdt_info.options |= WDIOF_PRETIMEOUT;
 else
  dev_warn(dev, "Add action failed, pretimeout NOT supported\n");

 return 0;
}
