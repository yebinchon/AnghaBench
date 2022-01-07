
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct dbx500_regulator_info {int is_enabled; TYPE_1__ desc; } ;


 int EINVAL ;
 int dev_vdbg (int ,char*,int ,int) ;
 int rdev_get_dev (struct regulator_dev*) ;
 struct dbx500_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int db8500_regulator_switch_is_enabled(struct regulator_dev *rdev)
{
 struct dbx500_regulator_info *info = rdev_get_drvdata(rdev);

 if (info == ((void*)0))
  return -EINVAL;

 dev_vdbg(rdev_get_dev(rdev),
  "regulator-switch-%s-is_enabled (is_enabled): %i\n",
  info->desc.name, info->is_enabled);

 return info->is_enabled;
}
