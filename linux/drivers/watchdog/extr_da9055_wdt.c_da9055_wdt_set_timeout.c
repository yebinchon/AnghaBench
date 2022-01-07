
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct watchdog_device {unsigned int timeout; } ;
struct da9055_wdt_data {struct da9055* da9055; } ;
struct da9055 {int dev; } ;
struct TYPE_3__ {unsigned int user_time; int reg_val; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int DA9055_REG_CONTROL_B ;
 int DA9055_TWDSCALE_MASK ;
 int DA9055_TWDSCALE_SHIFT ;
 int EINVAL ;
 int da9055_reg_update (struct da9055*,int ,int ,int) ;
 TYPE_1__* da9055_wdt_maps ;
 int dev_err (int ,char*,int) ;
 struct da9055_wdt_data* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int da9055_wdt_set_timeout(struct watchdog_device *wdt_dev,
      unsigned int timeout)
{
 struct da9055_wdt_data *driver_data = watchdog_get_drvdata(wdt_dev);
 struct da9055 *da9055 = driver_data->da9055;
 int ret, i;

 for (i = 0; i < ARRAY_SIZE(da9055_wdt_maps); i++)
  if (da9055_wdt_maps[i].user_time == timeout)
   break;

 if (i == ARRAY_SIZE(da9055_wdt_maps))
  ret = -EINVAL;
 else
  ret = da9055_reg_update(da9055, DA9055_REG_CONTROL_B,
     DA9055_TWDSCALE_MASK,
     da9055_wdt_maps[i].reg_val <<
     DA9055_TWDSCALE_SHIFT);
 if (ret < 0) {
  dev_err(da9055->dev,
   "Failed to update timescale bit, %d\n", ret);
  return ret;
 }

 wdt_dev->timeout = timeout;

 return 0;
}
