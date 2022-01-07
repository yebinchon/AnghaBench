
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ww_acquire_ctx {int dummy; } ;
struct regulator_dev {int ref_cnt; int mutex; } ;


 int EDEADLK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_list_mutex ;
 int regulator_lock_recursive (struct regulator_dev*,struct regulator_dev**,struct regulator_dev**,struct ww_acquire_ctx*) ;
 int regulator_unlock (struct regulator_dev*) ;
 int regulator_ww_class ;
 int ww_acquire_done (struct ww_acquire_ctx*) ;
 int ww_acquire_init (struct ww_acquire_ctx*,int *) ;
 int ww_mutex_lock_slow (int *,struct ww_acquire_ctx*) ;

__attribute__((used)) static void regulator_lock_dependent(struct regulator_dev *rdev,
         struct ww_acquire_ctx *ww_ctx)
{
 struct regulator_dev *new_contended_rdev = ((void*)0);
 struct regulator_dev *old_contended_rdev = ((void*)0);
 int err;

 mutex_lock(&regulator_list_mutex);

 ww_acquire_init(ww_ctx, &regulator_ww_class);

 do {
  if (new_contended_rdev) {
   ww_mutex_lock_slow(&new_contended_rdev->mutex, ww_ctx);
   old_contended_rdev = new_contended_rdev;
   old_contended_rdev->ref_cnt++;
  }

  err = regulator_lock_recursive(rdev,
            &new_contended_rdev,
            &old_contended_rdev,
            ww_ctx);

  if (old_contended_rdev)
   regulator_unlock(old_contended_rdev);

 } while (err == -EDEADLK);

 ww_acquire_done(ww_ctx);

 mutex_unlock(&regulator_list_mutex);
}
