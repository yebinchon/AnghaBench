
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct dbx500_regulator_info {int is_enabled; int exclude_from_power_state; TYPE_1__ desc; } ;


 int EINVAL ;
 int dev_vdbg (int ,char*,int ) ;
 int power_state_active_enable () ;
 int rdev_get_dev (struct regulator_dev*) ;
 struct dbx500_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int db8500_regulator_enable(struct regulator_dev *rdev)
{
 struct dbx500_regulator_info *info = rdev_get_drvdata(rdev);

 if (info == ((void*)0))
  return -EINVAL;

 dev_vdbg(rdev_get_dev(rdev), "regulator-%s-enable\n",
  info->desc.name);

 if (!info->is_enabled) {
  info->is_enabled = 1;
  if (!info->exclude_from_power_state)
   power_state_active_enable();
 }

 return 0;
}
