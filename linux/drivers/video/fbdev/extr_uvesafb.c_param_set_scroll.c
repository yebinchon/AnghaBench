
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int EINVAL ;
 int strcmp (char const*,char*) ;
 int ypan ;

__attribute__((used)) static int param_set_scroll(const char *val, const struct kernel_param *kp)
{
 ypan = 0;

 if (!strcmp(val, "redraw"))
  ypan = 0;
 else if (!strcmp(val, "ypan"))
  ypan = 1;
 else if (!strcmp(val, "ywrap"))
  ypan = 2;
 else
  return -EINVAL;

 return 0;
}
