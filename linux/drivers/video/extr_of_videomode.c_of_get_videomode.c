
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {int dummy; } ;
struct display_timings {int native_mode; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int OF_USE_NATIVE_MODE ;
 int display_timings_release (struct display_timings*) ;
 struct display_timings* of_get_display_timings (struct device_node*) ;
 int pr_err (char*,struct device_node*) ;
 int videomode_from_timings (struct display_timings*,struct videomode*,int) ;

int of_get_videomode(struct device_node *np, struct videomode *vm,
       int index)
{
 struct display_timings *disp;
 int ret;

 disp = of_get_display_timings(np);
 if (!disp) {
  pr_err("%pOF: no timings specified\n", np);
  return -EINVAL;
 }

 if (index == OF_USE_NATIVE_MODE)
  index = disp->native_mode;

 ret = videomode_from_timings(disp, vm, index);

 display_timings_release(disp);

 return ret;
}
