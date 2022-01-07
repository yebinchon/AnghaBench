
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {TYPE_1__* desc; int regmap; } ;
struct hi655x_regulator {int disable_reg; } ;
struct TYPE_2__ {int enable_mask; } ;


 struct hi655x_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int hi655x_disable(struct regulator_dev *rdev)
{
 struct hi655x_regulator *regulator = rdev_get_drvdata(rdev);

 return regmap_write(rdev->regmap, regulator->disable_reg,
       rdev->desc->enable_mask);
}
