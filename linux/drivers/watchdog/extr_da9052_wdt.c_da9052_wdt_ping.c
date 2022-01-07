
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct da9052_wdt_data {unsigned long jpast; struct da9052* da9052; } ;
struct da9052 {int dummy; } ;


 int DA9052_CONTROLD_WATCHDOG ;
 int DA9052_CONTROL_D_REG ;
 unsigned long DA9052_TWDMIN ;
 unsigned long HZ ;
 int da9052_reg_update (struct da9052*,int ,int ,int) ;
 unsigned long jiffies ;
 int mdelay (unsigned long) ;
 struct da9052_wdt_data* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int da9052_wdt_ping(struct watchdog_device *wdt_dev)
{
 struct da9052_wdt_data *driver_data = watchdog_get_drvdata(wdt_dev);
 struct da9052 *da9052 = driver_data->da9052;
 unsigned long msec, jnow = jiffies;
 int ret;





 msec = (jnow - driver_data->jpast) * 1000/HZ;
 if (msec < DA9052_TWDMIN)
  mdelay(msec);


 ret = da9052_reg_update(da9052, DA9052_CONTROL_D_REG,
    DA9052_CONTROLD_WATCHDOG, 1 << 7);
 if (ret < 0)
  return ret;





 return da9052_reg_update(da9052, DA9052_CONTROL_D_REG,
     DA9052_CONTROLD_WATCHDOG, 0 << 7);
}
