
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct wm8350 {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_6__ {int * parent; } ;


 int ENODEV ;
 int nowayout ;
 struct wm8350* platform_get_drvdata (struct platform_device*) ;
 int pr_err (char*) ;
 int watchdog_register_device (TYPE_1__*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct wm8350*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;
 TYPE_1__ wm8350_wdt ;
 int wm8350_wdt_set_timeout (TYPE_1__*,int) ;

__attribute__((used)) static int wm8350_wdt_probe(struct platform_device *pdev)
{
 struct wm8350 *wm8350 = platform_get_drvdata(pdev);

 if (!wm8350) {
  pr_err("No driver data supplied\n");
  return -ENODEV;
 }

 watchdog_set_nowayout(&wm8350_wdt, nowayout);
 watchdog_set_drvdata(&wm8350_wdt, wm8350);
 wm8350_wdt.parent = &pdev->dev;


 wm8350_wdt_set_timeout(&wm8350_wdt, 4);

 return watchdog_register_device(&wm8350_wdt);
}
