
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6524x {int dummy; } ;
struct supply_info {int enable; } ;
struct regulator_dev {int dummy; } ;


 struct tps6524x* rdev_get_drvdata (struct regulator_dev*) ;
 size_t rdev_get_id (struct regulator_dev*) ;
 int read_field (struct tps6524x*,int *) ;
 struct supply_info* supply_info ;

__attribute__((used)) static int is_supply_enabled(struct regulator_dev *rdev)
{
 const struct supply_info *info;
 struct tps6524x *hw;

 hw = rdev_get_drvdata(rdev);
 info = &supply_info[rdev_get_id(rdev)];

 return read_field(hw, &info->enable);
}
