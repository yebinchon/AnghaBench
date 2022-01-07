
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct regulator_dev {int debugfs; TYPE_1__ dev; int consumer_list; } ;
struct regulator {int always_on; int list; int debugfs; TYPE_2__* voltage; int uA_load; int * supply_name; struct device* dev; struct regulator_dev* rdev; } ;
struct TYPE_6__ {char* name; } ;
struct device {TYPE_3__ kobj; } ;
struct TYPE_5__ {int max_uV; int min_uV; } ;


 int GFP_KERNEL ;
 size_t PM_SUSPEND_ON ;
 int REGULATOR_CHANGE_STATUS ;
 int REG_STR_SIZE ;
 scalar_t__ _regulator_is_enabled (struct regulator_dev*) ;
 int constraint_flags_fops ;
 int debugfs_create_dir (int *,int ) ;
 int debugfs_create_file (char*,int,int ,struct regulator*,int *) ;
 int debugfs_create_u32 (char*,int,int ,int *) ;
 int kfree (struct regulator*) ;
 int * kstrdup (char*,int ) ;
 int * kstrdup_const (char const*,int ) ;
 struct regulator* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int rdev_dbg (struct regulator_dev*,char*,...) ;
 int regulator_lock (struct regulator_dev*) ;
 int regulator_ops_is_valid (struct regulator_dev*,int ) ;
 int regulator_unlock (struct regulator_dev*) ;
 int snprintf (char*,int,char*,char*,char const*) ;
 int sysfs_create_link_nowarn (int *,TYPE_3__*,char*) ;

__attribute__((used)) static struct regulator *create_regulator(struct regulator_dev *rdev,
       struct device *dev,
       const char *supply_name)
{
 struct regulator *regulator;
 char buf[REG_STR_SIZE];
 int err, size;

 regulator = kzalloc(sizeof(*regulator), GFP_KERNEL);
 if (regulator == ((void*)0))
  return ((void*)0);

 regulator_lock(rdev);
 regulator->rdev = rdev;
 list_add(&regulator->list, &rdev->consumer_list);

 if (dev) {
  regulator->dev = dev;


  size = snprintf(buf, REG_STR_SIZE, "%s-%s",
    dev->kobj.name, supply_name);
  if (size >= REG_STR_SIZE)
   goto overflow_err;

  regulator->supply_name = kstrdup(buf, GFP_KERNEL);
  if (regulator->supply_name == ((void*)0))
   goto overflow_err;

  err = sysfs_create_link_nowarn(&rdev->dev.kobj, &dev->kobj,
     buf);
  if (err) {
   rdev_dbg(rdev, "could not add device link %s err %d\n",
      dev->kobj.name, err);

  }
 } else {
  regulator->supply_name = kstrdup_const(supply_name, GFP_KERNEL);
  if (regulator->supply_name == ((void*)0))
   goto overflow_err;
 }

 regulator->debugfs = debugfs_create_dir(regulator->supply_name,
      rdev->debugfs);
 if (!regulator->debugfs) {
  rdev_dbg(rdev, "Failed to create debugfs directory\n");
 } else {
  debugfs_create_u32("uA_load", 0444, regulator->debugfs,
       &regulator->uA_load);
  debugfs_create_u32("min_uV", 0444, regulator->debugfs,
       &regulator->voltage[PM_SUSPEND_ON].min_uV);
  debugfs_create_u32("max_uV", 0444, regulator->debugfs,
       &regulator->voltage[PM_SUSPEND_ON].max_uV);
  debugfs_create_file("constraint_flags", 0444,
        regulator->debugfs, regulator,
        &constraint_flags_fops);
 }






 if (!regulator_ops_is_valid(rdev, REGULATOR_CHANGE_STATUS) &&
     _regulator_is_enabled(rdev))
  regulator->always_on = 1;

 regulator_unlock(rdev);
 return regulator;
overflow_err:
 list_del(&regulator->list);
 kfree(regulator);
 regulator_unlock(rdev);
 return ((void*)0);
}
