
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct tcmu_dev {int cmdr_lock; int max_blocks; scalar_t__ data_bitmap; } ;


 int EINVAL ;
 int TCMU_BLOCKS_TO_MBS (int ) ;
 int TCMU_MBS_TO_BLOCKS (int) ;
 int match_int (int *,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,...) ;
 int tcmu_global_max_blocks ;

__attribute__((used)) static int tcmu_set_max_blocks_param(struct tcmu_dev *udev, substring_t *arg)
{
 int val, ret;

 ret = match_int(arg, &val);
 if (ret < 0) {
  pr_err("match_int() failed for max_data_area_mb=. Error %d.\n",
         ret);
  return ret;
 }

 if (val <= 0) {
  pr_err("Invalid max_data_area %d.\n", val);
  return -EINVAL;
 }

 mutex_lock(&udev->cmdr_lock);
 if (udev->data_bitmap) {
  pr_err("Cannot set max_data_area_mb after it has been enabled.\n");
  ret = -EINVAL;
  goto unlock;
 }

 udev->max_blocks = TCMU_MBS_TO_BLOCKS(val);
 if (udev->max_blocks > tcmu_global_max_blocks) {
  pr_err("%d is too large. Adjusting max_data_area_mb to global limit of %u\n",
         val, TCMU_BLOCKS_TO_MBS(tcmu_global_max_blocks));
  udev->max_blocks = tcmu_global_max_blocks;
 }

unlock:
 mutex_unlock(&udev->cmdr_lock);
 return ret;
}
