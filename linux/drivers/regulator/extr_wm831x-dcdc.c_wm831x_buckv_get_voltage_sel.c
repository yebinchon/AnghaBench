
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_dcdc {int dvs_vsel; int on_vsel; scalar_t__ dvs_gpio_state; scalar_t__ dvs_gpiod; } ;
struct regulator_dev {int dummy; } ;


 struct wm831x_dcdc* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int wm831x_buckv_get_voltage_sel(struct regulator_dev *rdev)
{
 struct wm831x_dcdc *dcdc = rdev_get_drvdata(rdev);

 if (dcdc->dvs_gpiod && dcdc->dvs_gpio_state)
  return dcdc->dvs_vsel;
 else
  return dcdc->on_vsel;
}
