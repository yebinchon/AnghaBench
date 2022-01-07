
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct regulator_dev {int owner; TYPE_1__ dev; scalar_t__ exclusive; int open_count; } ;
struct regulator {int supply_name; int list; scalar_t__ dev; int debugfs; struct regulator_dev* rdev; int enable_count; } ;


 scalar_t__ IS_ERR_OR_NULL (struct regulator*) ;
 int WARN_ON (int ) ;
 int debugfs_remove_recursive (int ) ;
 int device_link_remove (scalar_t__,TYPE_1__*) ;
 int kfree (struct regulator*) ;
 int kfree_const (int ) ;
 int list_del (int *) ;
 int lockdep_assert_held_once (int *) ;
 int module_put (int ) ;
 int put_device (TYPE_1__*) ;
 int regulator_list_mutex ;
 int regulator_lock (struct regulator_dev*) ;
 int regulator_unlock (struct regulator_dev*) ;
 int sysfs_remove_link (int *,int ) ;

__attribute__((used)) static void _regulator_put(struct regulator *regulator)
{
 struct regulator_dev *rdev;

 if (IS_ERR_OR_NULL(regulator))
  return;

 lockdep_assert_held_once(&regulator_list_mutex);


 WARN_ON(regulator->enable_count);

 rdev = regulator->rdev;

 debugfs_remove_recursive(regulator->debugfs);

 if (regulator->dev) {
  device_link_remove(regulator->dev, &rdev->dev);


  sysfs_remove_link(&rdev->dev.kobj, regulator->supply_name);
 }

 regulator_lock(rdev);
 list_del(&regulator->list);

 rdev->open_count--;
 rdev->exclusive = 0;
 put_device(&rdev->dev);
 regulator_unlock(rdev);

 kfree_const(regulator->supply_name);
 kfree(regulator);

 module_put(rdev->owner);
}
