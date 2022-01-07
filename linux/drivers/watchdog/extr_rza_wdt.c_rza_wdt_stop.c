
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct rza_wdt {scalar_t__ base; } ;


 scalar_t__ WTCSR ;
 int WTCSR_MAGIC ;
 struct rza_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int rza_wdt_stop(struct watchdog_device *wdev)
{
 struct rza_wdt *priv = watchdog_get_drvdata(wdev);

 writew(WTCSR_MAGIC | 0, priv->base + WTCSR);

 return 0;
}
