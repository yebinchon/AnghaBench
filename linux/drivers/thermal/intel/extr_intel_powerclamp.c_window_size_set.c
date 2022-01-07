
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int EINVAL ;
 int clamp (unsigned long,unsigned long,unsigned long) ;
 int kstrtoul (char const*,int,unsigned long*) ;
 int pr_err (char*,unsigned long) ;
 int smp_mb () ;
 int window_size ;

__attribute__((used)) static int window_size_set(const char *arg, const struct kernel_param *kp)
{
 int ret = 0;
 unsigned long new_window_size;

 ret = kstrtoul(arg, 10, &new_window_size);
 if (ret)
  goto exit_win;
 if (new_window_size > 10 || new_window_size < 2) {
  pr_err("Out of recommended window size %lu, between 2-10\n",
   new_window_size);
  ret = -EINVAL;
 }

 window_size = clamp(new_window_size, 2ul, 10ul);
 smp_mb();

exit_win:

 return ret;
}
