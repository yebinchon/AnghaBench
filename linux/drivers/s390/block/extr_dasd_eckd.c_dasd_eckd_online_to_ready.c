
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int kick_validate; int reload_device; } ;


 scalar_t__ cancel_work_sync (int *) ;
 int dasd_put_device (struct dasd_device*) ;

__attribute__((used)) static int dasd_eckd_online_to_ready(struct dasd_device *device)
{
 if (cancel_work_sync(&device->reload_device))
  dasd_put_device(device);
 if (cancel_work_sync(&device->kick_validate))
  dasd_put_device(device);

 return 0;
}
