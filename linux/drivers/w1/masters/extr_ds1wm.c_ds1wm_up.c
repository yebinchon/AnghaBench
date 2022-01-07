
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ds1wm_driver_data {int clock_rate; } ;
struct ds1wm_data {TYPE_2__* pdev; TYPE_1__* cell; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {int (* enable ) (TYPE_2__*) ;} ;


 int DS1WM_CLKDIV ;
 int dev_dbg (struct device*,char*,int,int ) ;
 int dev_err (struct device*,char*,int ) ;
 struct ds1wm_driver_data* dev_get_platdata (struct device*) ;
 int ds1wm_find_divisor (int ) ;
 int ds1wm_reset (struct ds1wm_data*) ;
 int ds1wm_write_register (struct ds1wm_data*,int ,int) ;
 int msleep (int) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void ds1wm_up(struct ds1wm_data *ds1wm_data)
{
 int divisor;
 struct device *dev = &ds1wm_data->pdev->dev;
 struct ds1wm_driver_data *plat = dev_get_platdata(dev);

 if (ds1wm_data->cell->enable)
  ds1wm_data->cell->enable(ds1wm_data->pdev);

 divisor = ds1wm_find_divisor(plat->clock_rate);
 dev_dbg(dev, "found divisor 0x%x for clock %d\n",
  divisor, plat->clock_rate);
 if (divisor == 0) {
  dev_err(dev, "no suitable divisor for %dHz clock\n",
   plat->clock_rate);
  return;
 }
 ds1wm_write_register(ds1wm_data, DS1WM_CLKDIV, divisor);


 msleep(1);

 ds1wm_reset(ds1wm_data);
}
