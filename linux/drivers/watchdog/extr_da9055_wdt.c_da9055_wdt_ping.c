
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct da9055_wdt_data {struct da9055* da9055; } ;
struct da9055 {int dummy; } ;


 int DA9055_REG_CONTROL_E ;
 int DA9055_TWDMIN ;
 int DA9055_WATCHDOG_MASK ;
 int da9055_reg_update (struct da9055*,int ,int ,int) ;
 int mdelay (int ) ;
 struct da9055_wdt_data* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int da9055_wdt_ping(struct watchdog_device *wdt_dev)
{
 struct da9055_wdt_data *driver_data = watchdog_get_drvdata(wdt_dev);
 struct da9055 *da9055 = driver_data->da9055;





 mdelay(DA9055_TWDMIN);


 return da9055_reg_update(da9055, DA9055_REG_CONTROL_E,
     DA9055_WATCHDOG_MASK, 1);
}
