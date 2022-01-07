
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct dbx500_regulator_info {int is_enabled; TYPE_1__ desc; int is_ramret; int epod_id; } ;


 int EINVAL ;
 int dev_err (int ,char*,int ) ;
 int dev_vdbg (int ,char*,int ) ;
 int enable_epod (int ,int ) ;
 int rdev_get_dev (struct regulator_dev*) ;
 struct dbx500_regulator_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int db8500_regulator_switch_enable(struct regulator_dev *rdev)
{
 struct dbx500_regulator_info *info = rdev_get_drvdata(rdev);
 int ret;

 if (info == ((void*)0))
  return -EINVAL;

 dev_vdbg(rdev_get_dev(rdev), "regulator-switch-%s-enable\n",
  info->desc.name);

 ret = enable_epod(info->epod_id, info->is_ramret);
 if (ret < 0) {
  dev_err(rdev_get_dev(rdev),
   "regulator-switch-%s-enable: prcmu call failed\n",
   info->desc.name);
  goto out;
 }

 info->is_enabled = 1;
out:
 return ret;
}
