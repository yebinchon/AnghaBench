
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct gpio_regulator_data {unsigned int nr_states; TYPE_1__* states; } ;
struct TYPE_2__ {int value; } ;


 int EINVAL ;
 struct gpio_regulator_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int gpio_regulator_list_voltage(struct regulator_dev *dev,
          unsigned selector)
{
 struct gpio_regulator_data *data = rdev_get_drvdata(dev);

 if (selector >= data->nr_states)
  return -EINVAL;

 return data->states[selector].value;
}
