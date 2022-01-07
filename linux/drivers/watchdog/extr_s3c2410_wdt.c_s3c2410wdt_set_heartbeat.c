
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;
struct s3c2410_wdt {unsigned int count; scalar_t__ reg_base; int dev; int clock; } ;


 void* DIV_ROUND_UP (unsigned int,unsigned int) ;
 int EINVAL ;
 scalar_t__ S3C2410_WTCON ;
 unsigned long S3C2410_WTCON_PRESCALE (unsigned int) ;
 unsigned long S3C2410_WTCON_PRESCALE_MASK ;
 scalar_t__ S3C2410_WTDAT ;
 unsigned long clk_get_rate (int ) ;
 int dev_dbg (int ,char*,unsigned int,unsigned int,unsigned int,...) ;
 int dev_err (int ,char*,unsigned int) ;
 unsigned long readl (scalar_t__) ;
 struct s3c2410_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int s3c2410wdt_set_heartbeat(struct watchdog_device *wdd,
        unsigned int timeout)
{
 struct s3c2410_wdt *wdt = watchdog_get_drvdata(wdd);
 unsigned long freq = clk_get_rate(wdt->clock);
 unsigned int count;
 unsigned int divisor = 1;
 unsigned long wtcon;

 if (timeout < 1)
  return -EINVAL;

 freq = DIV_ROUND_UP(freq, 128);
 count = timeout * freq;

 dev_dbg(wdt->dev, "Heartbeat: count=%d, timeout=%d, freq=%lu\n",
  count, timeout, freq);






 if (count >= 0x10000) {
  divisor = DIV_ROUND_UP(count, 0xffff);

  if (divisor > 0x100) {
   dev_err(wdt->dev, "timeout %d too big\n", timeout);
   return -EINVAL;
  }
 }

 dev_dbg(wdt->dev, "Heartbeat: timeout=%d, divisor=%d, count=%d (%08x)\n",
  timeout, divisor, count, DIV_ROUND_UP(count, divisor));

 count = DIV_ROUND_UP(count, divisor);
 wdt->count = count;


 wtcon = readl(wdt->reg_base + S3C2410_WTCON);
 wtcon &= ~S3C2410_WTCON_PRESCALE_MASK;
 wtcon |= S3C2410_WTCON_PRESCALE(divisor-1);

 writel(count, wdt->reg_base + S3C2410_WTDAT);
 writel(wtcon, wdt->reg_base + S3C2410_WTCON);

 wdd->timeout = (count * divisor) / freq;

 return 0;
}
