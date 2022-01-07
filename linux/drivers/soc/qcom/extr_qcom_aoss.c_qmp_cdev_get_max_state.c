
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {int dummy; } ;


 unsigned long qmp_cdev_init_state ;

__attribute__((used)) static int qmp_cdev_get_max_state(struct thermal_cooling_device *cdev,
      unsigned long *state)
{
 *state = qmp_cdev_init_state;
 return 0;
}
