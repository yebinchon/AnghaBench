
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int status; int timeout; int parent; int max_hw_heartbeat_ms; int min_hw_heartbeat_ms; int * ops; int * info; } ;
struct wdtbd70528 {TYPE_1__ wdt; struct rohm_regmap_dev* mfd; int regmap; TYPE_3__* dev; } ;
struct rohm_regmap_dev {int regmap; } ;
struct TYPE_10__ {int parent; } ;
struct platform_device {TYPE_3__ dev; } ;


 unsigned int BD70528_MASK_WDT_EN ;
 int BD70528_REG_WDT_CTRL ;
 int DEFAULT_TIMEOUT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WDOG_HW_RUNNING ;
 int WDT_MAX_MS ;
 int WDT_MIN_MS ;
 int bd70528_wdt_info ;
 int bd70528_wdt_lock (struct rohm_regmap_dev*) ;
 int bd70528_wdt_ops ;
 int bd70528_wdt_set_timeout (TYPE_1__*,int ) ;
 int bd70528_wdt_unlock (struct rohm_regmap_dev*) ;
 int dev_dbg (TYPE_3__*,char*) ;
 int dev_err (TYPE_3__*,char*,...) ;
 struct rohm_regmap_dev* dev_get_drvdata (int ) ;
 struct wdtbd70528* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_watchdog_register_device (TYPE_3__*,TYPE_1__*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int set_bit (int ,int *) ;
 int watchdog_init_timeout (TYPE_1__*,int ,int ) ;
 int watchdog_set_drvdata (TYPE_1__*,struct wdtbd70528*) ;

__attribute__((used)) static int bd70528_wdt_probe(struct platform_device *pdev)
{
 struct rohm_regmap_dev *bd70528;
 struct wdtbd70528 *w;
 int ret;
 unsigned int reg;

 bd70528 = dev_get_drvdata(pdev->dev.parent);
 if (!bd70528) {
  dev_err(&pdev->dev, "No MFD driver data\n");
  return -EINVAL;
 }
 w = devm_kzalloc(&pdev->dev, sizeof(*w), GFP_KERNEL);
 if (!w)
  return -ENOMEM;

 w->regmap = bd70528->regmap;
 w->mfd = bd70528;
 w->dev = &pdev->dev;

 w->wdt.info = &bd70528_wdt_info;
 w->wdt.ops = &bd70528_wdt_ops;
 w->wdt.min_hw_heartbeat_ms = WDT_MIN_MS;
 w->wdt.max_hw_heartbeat_ms = WDT_MAX_MS;
 w->wdt.parent = pdev->dev.parent;
 w->wdt.timeout = DEFAULT_TIMEOUT;
 watchdog_set_drvdata(&w->wdt, w);
 watchdog_init_timeout(&w->wdt, 0, pdev->dev.parent);

 ret = bd70528_wdt_set_timeout(&w->wdt, w->wdt.timeout);
 if (ret) {
  dev_err(&pdev->dev, "Failed to set the watchdog timeout\n");
  return ret;
 }

 bd70528_wdt_lock(w->mfd);
 ret = regmap_read(w->regmap, BD70528_REG_WDT_CTRL, &reg);
 bd70528_wdt_unlock(w->mfd);

 if (ret) {
  dev_err(&pdev->dev, "Failed to get the watchdog state\n");
  return ret;
 }
 if (reg & BD70528_MASK_WDT_EN) {
  dev_dbg(&pdev->dev, "watchdog was running during probe\n");
  set_bit(WDOG_HW_RUNNING, &w->wdt.status);
 }

 ret = devm_watchdog_register_device(&pdev->dev, &w->wdt);
 if (ret < 0)
  dev_err(&pdev->dev, "watchdog registration failed: %d\n", ret);

 return ret;
}
