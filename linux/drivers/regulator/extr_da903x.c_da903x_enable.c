
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct device {int dummy; } ;
struct da903x_regulator_info {int enable_bit; int enable_reg; } ;


 int da903x_set_bits (struct device*,int ,int) ;
 struct da903x_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;
 struct device* to_da903x_dev (struct regulator_dev*) ;

__attribute__((used)) static int da903x_enable(struct regulator_dev *rdev)
{
 struct da903x_regulator_info *info = rdev_get_drvdata(rdev);
 struct device *da9034_dev = to_da903x_dev(rdev);

 return da903x_set_bits(da9034_dev, info->enable_reg,
     1 << info->enable_bit);
}
