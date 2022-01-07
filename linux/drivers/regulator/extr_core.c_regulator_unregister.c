
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct regulator_dev {int dev; int list; int open_count; int debugfs; TYPE_1__ disable_work; scalar_t__ supply; int use_count; } ;


 int WARN_ON (int ) ;
 int debugfs_remove_recursive (int ) ;
 int device_unregister (int *) ;
 int flush_work (int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_disable (scalar_t__) ;
 int regulator_ena_gpio_free (struct regulator_dev*) ;
 int regulator_list_mutex ;
 int regulator_put (scalar_t__) ;
 int regulator_remove_coupling (struct regulator_dev*) ;
 int unset_regulator_supplies (struct regulator_dev*) ;

void regulator_unregister(struct regulator_dev *rdev)
{
 if (rdev == ((void*)0))
  return;

 if (rdev->supply) {
  while (rdev->use_count--)
   regulator_disable(rdev->supply);
  regulator_put(rdev->supply);
 }

 flush_work(&rdev->disable_work.work);

 mutex_lock(&regulator_list_mutex);

 debugfs_remove_recursive(rdev->debugfs);
 WARN_ON(rdev->open_count);
 regulator_remove_coupling(rdev);
 unset_regulator_supplies(rdev);
 list_del(&rdev->list);
 regulator_ena_gpio_free(rdev);
 device_unregister(&rdev->dev);

 mutex_unlock(&regulator_list_mutex);
}
