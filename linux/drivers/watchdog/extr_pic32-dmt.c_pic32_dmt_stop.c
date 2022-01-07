
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct pic32_dmt {int dummy; } ;


 int dmt_disable (struct pic32_dmt*) ;
 struct pic32_dmt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int pic32_dmt_stop(struct watchdog_device *wdd)
{
 struct pic32_dmt *dmt = watchdog_get_drvdata(wdd);

 dmt_disable(dmt);

 return 0;
}
