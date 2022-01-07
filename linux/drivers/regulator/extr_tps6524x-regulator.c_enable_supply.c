
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6524x {int dummy; } ;
struct supply_info {int enable; } ;
struct regulator_dev {int dummy; } ;


 struct tps6524x* rdev_get_drvdata (struct regulator_dev*) ;
 size_t rdev_get_id (struct regulator_dev*) ;
 struct supply_info* supply_info ;
 int write_field (struct tps6524x*,int *,int) ;

__attribute__((used)) static int enable_supply(struct regulator_dev *rdev)
{
 const struct supply_info *info;
 struct tps6524x *hw;

 hw = rdev_get_drvdata(rdev);
 info = &supply_info[rdev_get_id(rdev)];

 return write_field(hw, &info->enable, 1);
}
