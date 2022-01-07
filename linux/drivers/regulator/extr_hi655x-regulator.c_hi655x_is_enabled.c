
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct hi655x_regulator {int status_reg; } ;
struct TYPE_2__ {unsigned int enable_mask; } ;


 struct hi655x_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int hi655x_is_enabled(struct regulator_dev *rdev)
{
 unsigned int value = 0;
 struct hi655x_regulator *regulator = rdev_get_drvdata(rdev);

 regmap_read(rdev->regmap, regulator->status_reg, &value);
 return (value & rdev->desc->enable_mask);
}
