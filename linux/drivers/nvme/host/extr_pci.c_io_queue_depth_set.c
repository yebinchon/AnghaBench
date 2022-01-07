
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int EINVAL ;
 int kstrtoint (char const*,int,int*) ;
 int param_set_int (char const*,struct kernel_param const*) ;

__attribute__((used)) static int io_queue_depth_set(const char *val, const struct kernel_param *kp)
{
 int n = 0, ret;

 ret = kstrtoint(val, 10, &n);
 if (ret != 0 || n < 2)
  return -EINVAL;

 return param_set_int(val, kp);
}
