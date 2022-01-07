
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_enable_gpio {int enable_count; int gpiod; } ;
struct regulator_dev {struct regulator_enable_gpio* ena_pin; } ;


 int EINVAL ;
 int gpiod_set_value_cansleep (int ,int) ;

__attribute__((used)) static int regulator_ena_gpio_ctrl(struct regulator_dev *rdev, bool enable)
{
 struct regulator_enable_gpio *pin = rdev->ena_pin;

 if (!pin)
  return -EINVAL;

 if (enable) {

  if (pin->enable_count == 0)
   gpiod_set_value_cansleep(pin->gpiod, 1);

  pin->enable_count++;
 } else {
  if (pin->enable_count > 1) {
   pin->enable_count--;
   return 0;
  }


  if (pin->enable_count <= 1) {
   gpiod_set_value_cansleep(pin->gpiod, 0);
   pin->enable_count = 0;
  }
 }

 return 0;
}
