
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ww_acquire_ctx {int dummy; } ;
struct regulator_dev {scalar_t__ mutex_owner; int ref_cnt; int mutex; } ;


 int EDEADLK ;
 scalar_t__ current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_nesting_mutex ;
 int ww_mutex_lock (int *,struct ww_acquire_ctx*) ;
 int ww_mutex_trylock (int *) ;

__attribute__((used)) static inline int regulator_lock_nested(struct regulator_dev *rdev,
     struct ww_acquire_ctx *ww_ctx)
{
 bool lock = 0;
 int ret = 0;

 mutex_lock(&regulator_nesting_mutex);

 if (ww_ctx || !ww_mutex_trylock(&rdev->mutex)) {
  if (rdev->mutex_owner == current)
   rdev->ref_cnt++;
  else
   lock = 1;

  if (lock) {
   mutex_unlock(&regulator_nesting_mutex);
   ret = ww_mutex_lock(&rdev->mutex, ww_ctx);
   mutex_lock(&regulator_nesting_mutex);
  }
 } else {
  lock = 1;
 }

 if (lock && ret != -EDEADLK) {
  rdev->ref_cnt++;
  rdev->mutex_owner = current;
 }

 mutex_unlock(&regulator_nesting_mutex);

 return ret;
}
