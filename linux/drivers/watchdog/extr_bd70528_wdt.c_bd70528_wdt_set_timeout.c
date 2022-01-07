
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdtbd70528 {int mfd; int dev; int regmap; } ;
struct watchdog_device {int dummy; } ;


 int BD70528_MASK_WDT_HOUR ;
 int BD70528_MASK_WDT_MINUTE ;
 int BD70528_MASK_WDT_SEC ;
 int BD70528_REG_WDT_HOUR ;
 int BD70528_REG_WDT_MINUTE ;
 int BD70528_REG_WDT_SEC ;
 int bd70528_wdt_lock (int ) ;
 int bd70528_wdt_set_locked (struct wdtbd70528*,int) ;
 int bd70528_wdt_unlock (int ) ;
 unsigned int bin2bcd (unsigned int) ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 struct wdtbd70528* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int bd70528_wdt_set_timeout(struct watchdog_device *wdt,
       unsigned int timeout)
{
 unsigned int hours;
 unsigned int minutes;
 unsigned int seconds;
 int ret;
 struct wdtbd70528 *w = watchdog_get_drvdata(wdt);

 seconds = timeout;
 hours = timeout / (60 * 60);

 if (hours)
  seconds -= (60 * 60);
 minutes = seconds / 60;
 seconds = seconds % 60;

 bd70528_wdt_lock(w->mfd);

 ret = bd70528_wdt_set_locked(w, 0);
 if (ret)
  goto out_unlock;

 ret = regmap_update_bits(w->regmap, BD70528_REG_WDT_HOUR,
     BD70528_MASK_WDT_HOUR, hours);
 if (ret) {
  dev_err(w->dev, "Failed to set WDT hours\n");
  goto out_en_unlock;
 }
 ret = regmap_update_bits(w->regmap, BD70528_REG_WDT_MINUTE,
     BD70528_MASK_WDT_MINUTE, bin2bcd(minutes));
 if (ret) {
  dev_err(w->dev, "Failed to set WDT minutes\n");
  goto out_en_unlock;
 }
 ret = regmap_update_bits(w->regmap, BD70528_REG_WDT_SEC,
     BD70528_MASK_WDT_SEC, bin2bcd(seconds));
 if (ret)
  dev_err(w->dev, "Failed to set WDT seconds\n");
 else
  dev_dbg(w->dev, "WDT tmo set to %u\n", timeout);

out_en_unlock:
 ret = bd70528_wdt_set_locked(w, 1);
out_unlock:
 bd70528_wdt_unlock(w->mfd);

 return ret;
}
