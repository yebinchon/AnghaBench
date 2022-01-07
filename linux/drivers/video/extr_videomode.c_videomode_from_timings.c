
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {int dummy; } ;
struct display_timings {int dummy; } ;
struct display_timing {int dummy; } ;


 int EINVAL ;
 struct display_timing* display_timings_get (struct display_timings const*,unsigned int) ;
 int videomode_from_timing (struct display_timing*,struct videomode*) ;

int videomode_from_timings(const struct display_timings *disp,
     struct videomode *vm, unsigned int index)
{
 struct display_timing *dt;

 dt = display_timings_get(disp, index);
 if (!dt)
  return -EINVAL;

 videomode_from_timing(dt, vm);

 return 0;
}
