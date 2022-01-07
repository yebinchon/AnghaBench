
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_6__ {int bootstatus; struct device* parent; } ;
struct a21_wdt_drv {TYPE_1__ wdt; int * gpios; } ;
typedef enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_ASIS ;
 int GPIOD_IN ;
 int GPIO_WD_RST0 ;
 scalar_t__ IS_ERR (int ) ;
 int NUM_GPIOS ;
 int PTR_ERR (int ) ;
 int WDIOF_CARDRESET ;
 int WDIOF_EXTERN1 ;
 int WDIOF_EXTERN2 ;
 int WDIOF_POWERUNDER ;
 TYPE_1__ a21_wdt ;
 unsigned int a21_wdt_get_bootstatus (struct a21_wdt_drv*) ;
 int dev_err (struct device*,char*,int,int) ;
 int dev_info (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct a21_wdt_drv*) ;
 int devm_gpiod_get_index (struct device*,int *,int,int) ;
 struct a21_wdt_drv* devm_kzalloc (struct device*,int,int ) ;
 int devm_watchdog_register_device (struct device*,TYPE_1__*) ;
 int gpiod_count (struct device*,int *) ;
 int gpiod_direction_output (int ,int) ;
 int gpiod_get_value (int ) ;
 int gpiod_set_consumer_name (int ,char*) ;
 int nowayout ;
 int watchdog_init_timeout (TYPE_1__*,int,struct device*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct a21_wdt_drv*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;

__attribute__((used)) static int a21_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct a21_wdt_drv *drv;
 unsigned int reset = 0;
 int num_gpios;
 int ret;
 int i;

 drv = devm_kzalloc(dev, sizeof(struct a21_wdt_drv), GFP_KERNEL);
 if (!drv)
  return -ENOMEM;

 num_gpios = gpiod_count(dev, ((void*)0));
 if (num_gpios != NUM_GPIOS) {
  dev_err(dev, "gpios DT property wrong, got %d want %d",
   num_gpios, NUM_GPIOS);
  return -ENODEV;
 }


 for (i = 0; i < num_gpios; i++) {
  enum gpiod_flags gflags;

  if (i < GPIO_WD_RST0)
   gflags = GPIOD_ASIS;
  else
   gflags = GPIOD_IN;
  drv->gpios[i] = devm_gpiod_get_index(dev, ((void*)0), i, gflags);
  if (IS_ERR(drv->gpios[i]))
   return PTR_ERR(drv->gpios[i]);

  gpiod_set_consumer_name(drv->gpios[i], "MEN A21 Watchdog");





  if (i < GPIO_WD_RST0) {
   int val;

   val = gpiod_get_value(drv->gpios[i]);
   gpiod_direction_output(drv->gpios[i], val);
  }
 }

 watchdog_init_timeout(&a21_wdt, 30, dev);
 watchdog_set_nowayout(&a21_wdt, nowayout);
 watchdog_set_drvdata(&a21_wdt, drv);
 a21_wdt.parent = dev;

 reset = a21_wdt_get_bootstatus(drv);
 if (reset == 2)
  a21_wdt.bootstatus |= WDIOF_EXTERN1;
 else if (reset == 4)
  a21_wdt.bootstatus |= WDIOF_CARDRESET;
 else if (reset == 5)
  a21_wdt.bootstatus |= WDIOF_POWERUNDER;
 else if (reset == 7)
  a21_wdt.bootstatus |= WDIOF_EXTERN2;

 drv->wdt = a21_wdt;
 dev_set_drvdata(dev, drv);

 ret = devm_watchdog_register_device(dev, &a21_wdt);
 if (ret)
  return ret;

 dev_info(dev, "MEN A21 watchdog timer driver enabled\n");

 return 0;
}
