
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct s3c2410_wdt {int lock; scalar_t__ reg_base; int count; } ;


 scalar_t__ S3C2410_WTCNT ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct s3c2410_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int s3c2410wdt_keepalive(struct watchdog_device *wdd)
{
 struct s3c2410_wdt *wdt = watchdog_get_drvdata(wdd);

 spin_lock(&wdt->lock);
 writel(wdt->count, wdt->reg_base + S3C2410_WTCNT);
 spin_unlock(&wdt->lock);

 return 0;
}
