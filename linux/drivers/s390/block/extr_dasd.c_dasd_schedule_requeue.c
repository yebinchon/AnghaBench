
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int requeue_requests; } ;


 int dasd_get_device (struct dasd_device*) ;
 int dasd_put_device (struct dasd_device*) ;
 int schedule_work (int *) ;

void dasd_schedule_requeue(struct dasd_device *device)
{
 dasd_get_device(device);

 if (!schedule_work(&device->requeue_requests))
  dasd_put_device(device);
}
