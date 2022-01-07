
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_dev {int ena_gpio_state; TYPE_2__* desc; scalar_t__ ena_pin; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* is_enabled ) (struct regulator_dev*) ;} ;


 int stub1 (struct regulator_dev*) ;

__attribute__((used)) static int _regulator_is_enabled(struct regulator_dev *rdev)
{

 if (rdev->ena_pin)
  return rdev->ena_gpio_state;


 if (!rdev->desc->ops->is_enabled)
  return 1;

 return rdev->desc->ops->is_enabled(rdev);
}
