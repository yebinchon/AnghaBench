
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {scalar_t__ ref_cnt; int mutex; int * mutex_owner; } ;


 int WARN_ON_ONCE (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_nesting_mutex ;
 int ww_mutex_unlock (int *) ;

void regulator_unlock(struct regulator_dev *rdev)
{
 mutex_lock(&regulator_nesting_mutex);

 if (--rdev->ref_cnt == 0) {
  rdev->mutex_owner = ((void*)0);
  ww_mutex_unlock(&rdev->mutex);
 }

 WARN_ON_ONCE(rdev->ref_cnt < 0);

 mutex_unlock(&regulator_nesting_mutex);
}
