
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct watchdog_device {unsigned int timeout; } ;
struct da9052_wdt_data {int jpast; struct da9052* da9052; } ;
struct da9052 {int dev; } ;
struct TYPE_3__ {unsigned int time; int reg_val; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int DA9052_CONTROLD_TWDSCALE ;
 int DA9052_CONTROL_D_REG ;
 int EINVAL ;
 int da9052_reg_update (struct da9052*,int ,int ,int ) ;
 TYPE_1__* da9052_wdt_maps ;
 int dev_err (int ,char*,int) ;
 int jiffies ;
 int udelay (int) ;
 struct da9052_wdt_data* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int da9052_wdt_set_timeout(struct watchdog_device *wdt_dev,
      unsigned int timeout)
{
 struct da9052_wdt_data *driver_data = watchdog_get_drvdata(wdt_dev);
 struct da9052 *da9052 = driver_data->da9052;
 int ret, i;





 ret = da9052_reg_update(da9052, DA9052_CONTROL_D_REG,
    DA9052_CONTROLD_TWDSCALE, 0);
 if (ret < 0) {
  dev_err(da9052->dev, "Failed to disable watchdog bit, %d\n",
   ret);
  return ret;
 }
 if (timeout) {




  udelay(150);


  for (i = 0; i < ARRAY_SIZE(da9052_wdt_maps); i++)
   if (da9052_wdt_maps[i].time == timeout)
    break;

  if (i == ARRAY_SIZE(da9052_wdt_maps))
   ret = -EINVAL;
  else
   ret = da9052_reg_update(da9052, DA9052_CONTROL_D_REG,
      DA9052_CONTROLD_TWDSCALE,
      da9052_wdt_maps[i].reg_val);
  if (ret < 0) {
   dev_err(da9052->dev,
    "Failed to update timescale bit, %d\n", ret);
   return ret;
  }

  wdt_dev->timeout = timeout;
  driver_data->jpast = jiffies;
 }

 return 0;
}
