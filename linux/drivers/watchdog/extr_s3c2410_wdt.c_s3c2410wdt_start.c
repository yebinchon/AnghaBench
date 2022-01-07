
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct s3c2410_wdt {unsigned long count; int lock; scalar_t__ reg_base; int dev; } ;


 scalar_t__ S3C2410_WTCNT ;
 scalar_t__ S3C2410_WTCON ;
 unsigned long S3C2410_WTCON_DIV128 ;
 unsigned long S3C2410_WTCON_ENABLE ;
 unsigned long S3C2410_WTCON_INTEN ;
 unsigned long S3C2410_WTCON_RSTEN ;
 scalar_t__ S3C2410_WTDAT ;
 int __s3c2410wdt_stop (struct s3c2410_wdt*) ;
 int dev_dbg (int ,char*,unsigned long,unsigned long) ;
 unsigned long readl (scalar_t__) ;
 scalar_t__ soft_noboot ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct s3c2410_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int s3c2410wdt_start(struct watchdog_device *wdd)
{
 unsigned long wtcon;
 struct s3c2410_wdt *wdt = watchdog_get_drvdata(wdd);

 spin_lock(&wdt->lock);

 __s3c2410wdt_stop(wdt);

 wtcon = readl(wdt->reg_base + S3C2410_WTCON);
 wtcon |= S3C2410_WTCON_ENABLE | S3C2410_WTCON_DIV128;

 if (soft_noboot) {
  wtcon |= S3C2410_WTCON_INTEN;
  wtcon &= ~S3C2410_WTCON_RSTEN;
 } else {
  wtcon &= ~S3C2410_WTCON_INTEN;
  wtcon |= S3C2410_WTCON_RSTEN;
 }

 dev_dbg(wdt->dev, "Starting watchdog: count=0x%08x, wtcon=%08lx\n",
  wdt->count, wtcon);

 writel(wdt->count, wdt->reg_base + S3C2410_WTDAT);
 writel(wdt->count, wdt->reg_base + S3C2410_WTCNT);
 writel(wtcon, wdt->reg_base + S3C2410_WTCON);
 spin_unlock(&wdt->lock);

 return 0;
}
