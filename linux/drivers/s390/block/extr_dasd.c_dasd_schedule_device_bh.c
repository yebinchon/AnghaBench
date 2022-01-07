
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int tasklet; int tasklet_scheduled; } ;


 scalar_t__ atomic_cmpxchg (int *,int ,int) ;
 int dasd_get_device (struct dasd_device*) ;
 int tasklet_hi_schedule (int *) ;

void dasd_schedule_device_bh(struct dasd_device *device)
{

 if (atomic_cmpxchg (&device->tasklet_scheduled, 0, 1) != 0)
  return;
 dasd_get_device(device);
 tasklet_hi_schedule(&device->tasklet);
}
