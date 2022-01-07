
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {int dummy; } ;


 int clamping ;
 unsigned long pkg_cstate_ratio_cur ;

__attribute__((used)) static int powerclamp_get_cur_state(struct thermal_cooling_device *cdev,
     unsigned long *state)
{
 if (1 == clamping)
  *state = pkg_cstate_ratio_cur;
 else

  *state = -1;

 return 0;
}
