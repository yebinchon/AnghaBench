
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int open_count; int * supply; int dev; int owner; } ;


 int ENODEV ;
 int ENOMEM ;
 int * create_regulator (struct regulator_dev*,int *,char*) ;
 int rdev_get_name (struct regulator_dev*) ;
 int rdev_info (struct regulator_dev*,char*,int ) ;
 int try_module_get (int ) ;

__attribute__((used)) static int set_supply(struct regulator_dev *rdev,
        struct regulator_dev *supply_rdev)
{
 int err;

 rdev_info(rdev, "supplied by %s\n", rdev_get_name(supply_rdev));

 if (!try_module_get(supply_rdev->owner))
  return -ENODEV;

 rdev->supply = create_regulator(supply_rdev, &rdev->dev, "SUPPLY");
 if (rdev->supply == ((void*)0)) {
  err = -ENOMEM;
  return err;
 }
 supply_rdev->open_count++;

 return 0;
}
