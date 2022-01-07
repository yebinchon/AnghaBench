
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wm8994_ldo {TYPE_1__* wm8994; } ;
struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int type; } ;


 int EINVAL ;



 unsigned int WM8994_LDO2_MAX_SELECTOR ;
 struct wm8994_ldo* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int wm8994_ldo2_list_voltage(struct regulator_dev *rdev,
        unsigned int selector)
{
 struct wm8994_ldo *ldo = rdev_get_drvdata(rdev);

 if (selector > WM8994_LDO2_MAX_SELECTOR)
  return -EINVAL;

 switch (ldo->wm8994->type) {
 case 128:
  return (selector * 100000) + 900000;
 case 129:
  return (selector * 100000) + 1000000;
 case 130:
  switch (selector) {
  case 0:
   return -EINVAL;
  default:
   return (selector * 100000) + 950000;
  }
  break;
 default:
  return -EINVAL;
 }
}
