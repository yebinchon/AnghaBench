
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct watchdog_device {int dummy; } ;
struct sp805_wdt {int rate; int lock; scalar_t__ load_val; scalar_t__ base; } ;


 int INT_MASK ;
 scalar_t__ WDTRIS ;
 scalar_t__ WDTVALUE ;
 unsigned int div_u64 (int,int ) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct sp805_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static unsigned int wdt_timeleft(struct watchdog_device *wdd)
{
 struct sp805_wdt *wdt = watchdog_get_drvdata(wdd);
 u64 load;

 spin_lock(&wdt->lock);
 load = readl_relaxed(wdt->base + WDTVALUE);


 if (!(readl_relaxed(wdt->base + WDTRIS) & INT_MASK))
  load += wdt->load_val + 1;
 spin_unlock(&wdt->lock);

 return div_u64(load, wdt->rate);
}
