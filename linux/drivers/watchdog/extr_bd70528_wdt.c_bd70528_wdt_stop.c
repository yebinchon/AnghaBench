
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdtbd70528 {int dev; } ;
struct watchdog_device {int dummy; } ;


 int bd70528_wdt_change (struct wdtbd70528*,int ) ;
 int dev_dbg (int ,char*) ;
 struct wdtbd70528* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int bd70528_wdt_stop(struct watchdog_device *wdt)
{
 struct wdtbd70528 *w = watchdog_get_drvdata(wdt);

 dev_dbg(w->dev, "WDT stopping...\n");
 return bd70528_wdt_change(w, 0);
}
