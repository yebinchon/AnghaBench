
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {struct qmp_cooling_device* devdata; } ;
struct qmp_cooling_device {unsigned long state; } ;



__attribute__((used)) static int qmp_cdev_get_cur_state(struct thermal_cooling_device *cdev,
      unsigned long *state)
{
 struct qmp_cooling_device *qmp_cdev = cdev->devdata;

 *state = qmp_cdev->state;
 return 0;
}
