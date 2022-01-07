
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_dcdc {int dvs_gpio_state; int dvs_gpiod; } ;
struct regulator_dev {int dummy; } ;


 int gpiod_set_value (int ,int) ;
 struct wm831x_dcdc* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int wm831x_buckv_set_dvs(struct regulator_dev *rdev, int state)
{
 struct wm831x_dcdc *dcdc = rdev_get_drvdata(rdev);

 if (state == dcdc->dvs_gpio_state)
  return 0;

 dcdc->dvs_gpio_state = state;
 gpiod_set_value(dcdc->dvs_gpiod, state);






 return 0;
}
