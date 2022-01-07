
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {scalar_t__ state; int kick_validate; int flags; } ;


 int DASD_FLAG_OFFLINE ;
 scalar_t__ DASD_STATE_ONLINE ;
 int dasd_get_device (struct dasd_device*) ;
 int dasd_put_device (struct dasd_device*) ;
 int schedule_work (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void dasd_eckd_kick_validate_server(struct dasd_device *device)
{
 dasd_get_device(device);

 if (test_bit(DASD_FLAG_OFFLINE, &device->flags) ||
    device->state < DASD_STATE_ONLINE) {
  dasd_put_device(device);
  return;
 }

 if (!schedule_work(&device->kick_validate))
  dasd_put_device(device);
}
