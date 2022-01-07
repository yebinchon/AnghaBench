
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {int dummy; } ;


 int MAX_TARGET_RATIO ;
 unsigned long clamp (unsigned long,unsigned long,unsigned long) ;
 int end_power_clamp () ;
 int pr_info (char*) ;
 unsigned long set_target_ratio ;
 int smp_mb () ;
 int start_power_clamp () ;

__attribute__((used)) static int powerclamp_set_cur_state(struct thermal_cooling_device *cdev,
     unsigned long new_target_ratio)
{
 int ret = 0;

 new_target_ratio = clamp(new_target_ratio, 0UL,
    (unsigned long) (MAX_TARGET_RATIO-1));
 if (set_target_ratio == 0 && new_target_ratio > 0) {
  pr_info("Start idle injection to reduce power\n");
  set_target_ratio = new_target_ratio;
  ret = start_power_clamp();
  goto exit_set;
 } else if (set_target_ratio > 0 && new_target_ratio == 0) {
  pr_info("Stop forced idle injection\n");
  end_power_clamp();
  set_target_ratio = 0;
 } else {
  set_target_ratio = new_target_ratio;

  smp_mb();
 }

exit_set:
 return ret;
}
