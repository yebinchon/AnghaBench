
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct watchdog_device {int timeout; } ;
struct kempld_wdt_data {struct kempld_device_data* pld; } ;
struct kempld_device_data {int dummy; } ;


 int EACCES ;
 int KEMPLD_WDT_CFG ;
 int KEMPLD_WDT_CFG_ENABLE ;
 int kempld_get_mutex (struct kempld_device_data*) ;
 int kempld_read8 (struct kempld_device_data*,int ) ;
 int kempld_release_mutex (struct kempld_device_data*) ;
 int kempld_wdt_set_timeout (struct watchdog_device*,int ) ;
 int kempld_write8 (struct kempld_device_data*,int ,int) ;
 struct kempld_wdt_data* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int kempld_wdt_start(struct watchdog_device *wdd)
{
 struct kempld_wdt_data *wdt_data = watchdog_get_drvdata(wdd);
 struct kempld_device_data *pld = wdt_data->pld;
 u8 status;
 int ret;

 ret = kempld_wdt_set_timeout(wdd, wdd->timeout);
 if (ret)
  return ret;

 kempld_get_mutex(pld);
 status = kempld_read8(pld, KEMPLD_WDT_CFG);
 status |= KEMPLD_WDT_CFG_ENABLE;
 kempld_write8(pld, KEMPLD_WDT_CFG, status);
 status = kempld_read8(pld, KEMPLD_WDT_CFG);
 kempld_release_mutex(pld);


 if (!(status & KEMPLD_WDT_CFG_ENABLE))
  return -EACCES;

 return 0;
}
