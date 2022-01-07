
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int EINVAL ;
 scalar_t__ TCMU_MBS_TO_BLOCKS (int) ;
 scalar_t__ atomic_read (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int global_db_count ;
 int kstrtoint (char const*,int,int*) ;
 int pr_err (char*) ;
 int schedule_delayed_work (int *,int ) ;
 scalar_t__ tcmu_global_max_blocks ;
 int tcmu_unmap_work ;

__attribute__((used)) static int tcmu_set_global_max_data_area(const char *str,
      const struct kernel_param *kp)
{
 int ret, max_area_mb;

 ret = kstrtoint(str, 10, &max_area_mb);
 if (ret)
  return -EINVAL;

 if (max_area_mb <= 0) {
  pr_err("global_max_data_area must be larger than 0.\n");
  return -EINVAL;
 }

 tcmu_global_max_blocks = TCMU_MBS_TO_BLOCKS(max_area_mb);
 if (atomic_read(&global_db_count) > tcmu_global_max_blocks)
  schedule_delayed_work(&tcmu_unmap_work, 0);
 else
  cancel_delayed_work_sync(&tcmu_unmap_work);

 return 0;
}
