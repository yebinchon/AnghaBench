
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int target; int state; int state_mutex; } ;


 int DASD_STATE_READY ;
 int dasd_change_state (struct dasd_device*) ;
 int dasd_get_device (struct dasd_device*) ;
 int dasd_init_waitq ;
 scalar_t__ dasd_probeonly ;
 int dasd_put_device (struct dasd_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up (int *) ;

void dasd_set_target_state(struct dasd_device *device, int target)
{
 dasd_get_device(device);
 mutex_lock(&device->state_mutex);

 if (dasd_probeonly && target > DASD_STATE_READY)
  target = DASD_STATE_READY;
 if (device->target != target) {
  if (device->state == target)
   wake_up(&dasd_init_waitq);
  device->target = target;
 }
 if (device->state != device->target)
  dasd_change_state(device);
 mutex_unlock(&device->state_mutex);
 dasd_put_device(device);
}
