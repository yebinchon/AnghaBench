
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct s3c2410_wdt {int lock; } ;


 int __s3c2410wdt_stop (struct s3c2410_wdt*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct s3c2410_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int s3c2410wdt_stop(struct watchdog_device *wdd)
{
 struct s3c2410_wdt *wdt = watchdog_get_drvdata(wdd);

 spin_lock(&wdt->lock);
 __s3c2410wdt_stop(wdt);
 spin_unlock(&wdt->lock);

 return 0;
}
