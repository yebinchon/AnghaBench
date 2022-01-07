
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ww_acquire_ctx {int dummy; } ;
struct TYPE_3__ {int n_coupled; struct regulator_dev** coupled_rdevs; } ;
struct regulator_dev {TYPE_2__* supply; TYPE_1__ coupling_desc; } ;
struct TYPE_4__ {struct regulator_dev* rdev; } ;


 int EALREADY ;
 int EDEADLK ;
 int WARN_ON_ONCE (int) ;
 int regulator_lock_nested (struct regulator_dev*,struct ww_acquire_ctx*) ;
 int regulator_supply_is_couple (struct regulator_dev*) ;
 int regulator_unlock (struct regulator_dev*) ;
 int regulator_unlock_recursive (struct regulator_dev*,int) ;

__attribute__((used)) static int regulator_lock_recursive(struct regulator_dev *rdev,
        struct regulator_dev **new_contended_rdev,
        struct regulator_dev **old_contended_rdev,
        struct ww_acquire_ctx *ww_ctx)
{
 struct regulator_dev *c_rdev;
 int i, err;

 for (i = 0; i < rdev->coupling_desc.n_coupled; i++) {
  c_rdev = rdev->coupling_desc.coupled_rdevs[i];

  if (!c_rdev)
   continue;

  if (c_rdev != *old_contended_rdev) {
   err = regulator_lock_nested(c_rdev, ww_ctx);
   if (err) {
    if (err == -EDEADLK) {
     *new_contended_rdev = c_rdev;
     goto err_unlock;
    }


    WARN_ON_ONCE(err != -EALREADY);
   }
  } else {
   *old_contended_rdev = ((void*)0);
  }

  if (c_rdev->supply && !regulator_supply_is_couple(c_rdev)) {
   err = regulator_lock_recursive(c_rdev->supply->rdev,
             new_contended_rdev,
             old_contended_rdev,
             ww_ctx);
   if (err) {
    regulator_unlock(c_rdev);
    goto err_unlock;
   }
  }
 }

 return 0;

err_unlock:
 regulator_unlock_recursive(rdev, i);

 return err;
}
