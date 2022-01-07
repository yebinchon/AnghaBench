
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_6__ {int min_timeout; int max_timeout; int timeout; int status; struct device* parent; int * ops; int * info; } ;
struct npcm_wdt {TYPE_1__ wdd; int reg; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WDOG_HW_RUNNING ;
 int dev_info (struct device*,char*) ;
 struct npcm_wdt* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct npcm_wdt*) ;
 int devm_watchdog_register_device (struct device*,TYPE_1__*) ;
 scalar_t__ npcm_is_running (TYPE_1__*) ;
 int npcm_wdt_info ;
 int npcm_wdt_interrupt ;
 int npcm_wdt_ops ;
 int npcm_wdt_set_timeout (TYPE_1__*,int) ;
 int npcm_wdt_start (TYPE_1__*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int set_bit (int ,int *) ;
 int watchdog_init_timeout (TYPE_1__*,int ,struct device*) ;

__attribute__((used)) static int npcm_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct npcm_wdt *wdt;
 int irq;
 int ret;

 wdt = devm_kzalloc(dev, sizeof(*wdt), GFP_KERNEL);
 if (!wdt)
  return -ENOMEM;

 wdt->reg = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(wdt->reg))
  return PTR_ERR(wdt->reg);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 wdt->wdd.info = &npcm_wdt_info;
 wdt->wdd.ops = &npcm_wdt_ops;
 wdt->wdd.min_timeout = 1;
 wdt->wdd.max_timeout = 2750;
 wdt->wdd.parent = dev;

 wdt->wdd.timeout = 86;
 watchdog_init_timeout(&wdt->wdd, 0, dev);


 npcm_wdt_set_timeout(&wdt->wdd, wdt->wdd.timeout);

 if (npcm_is_running(&wdt->wdd)) {

  npcm_wdt_start(&wdt->wdd);
  set_bit(WDOG_HW_RUNNING, &wdt->wdd.status);
 }

 ret = devm_request_irq(dev, irq, npcm_wdt_interrupt, 0, "watchdog",
          wdt);
 if (ret)
  return ret;

 ret = devm_watchdog_register_device(dev, &wdt->wdd);
 if (ret)
  return ret;

 dev_info(dev, "NPCM watchdog driver enabled\n");

 return 0;
}
