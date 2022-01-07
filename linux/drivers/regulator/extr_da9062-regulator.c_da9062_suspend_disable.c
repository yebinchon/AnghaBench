
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct da9062_regulator {int suspend; } ;


 struct da9062_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int regmap_field_write (int ,int ) ;

__attribute__((used)) static int da9062_suspend_disable(struct regulator_dev *rdev)
{
 struct da9062_regulator *regl = rdev_get_drvdata(rdev);

 return regmap_field_write(regl->suspend, 0);
}
