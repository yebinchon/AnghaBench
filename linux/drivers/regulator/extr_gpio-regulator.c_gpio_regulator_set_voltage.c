
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct gpio_regulator_data {int nr_states; int nr_gpios; int state; int * gpiods; TYPE_1__* states; } ;
struct TYPE_2__ {int value; int gpios; } ;


 int EINVAL ;
 int INT_MAX ;
 int gpiod_set_value_cansleep (int ,int) ;
 struct gpio_regulator_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int gpio_regulator_set_voltage(struct regulator_dev *dev,
     int min_uV, int max_uV,
     unsigned *selector)
{
 struct gpio_regulator_data *data = rdev_get_drvdata(dev);
 int ptr, target = 0, state, best_val = INT_MAX;

 for (ptr = 0; ptr < data->nr_states; ptr++)
  if (data->states[ptr].value < best_val &&
      data->states[ptr].value >= min_uV &&
      data->states[ptr].value <= max_uV) {
   target = data->states[ptr].gpios;
   best_val = data->states[ptr].value;
   if (selector)
    *selector = ptr;
  }

 if (best_val == INT_MAX)
  return -EINVAL;

 for (ptr = 0; ptr < data->nr_gpios; ptr++) {
  state = (target & (1 << ptr)) >> ptr;
  gpiod_set_value_cansleep(data->gpiods[ptr], state);
 }
 data->state = target;

 return 0;
}
