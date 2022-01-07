
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int EINVAL ;
 int clamp (unsigned long,unsigned long,unsigned long) ;
 int duration ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int pr_err (char*,unsigned long) ;
 int smp_mb () ;

__attribute__((used)) static int duration_set(const char *arg, const struct kernel_param *kp)
{
 int ret = 0;
 unsigned long new_duration;

 ret = kstrtoul(arg, 10, &new_duration);
 if (ret)
  goto exit;
 if (new_duration > 25 || new_duration < 6) {
  pr_err("Out of recommended range %lu, between 6-25ms\n",
   new_duration);
  ret = -EINVAL;
 }

 duration = clamp(new_duration, 6ul, 25ul);
 smp_mb();

exit:

 return ret;
}
