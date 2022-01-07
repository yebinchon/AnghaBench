
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {int stopped; TYPE_1__* discipline; } ;
struct TYPE_2__ {int (* verify_path ) (struct dasd_device*,int ) ;} ;


 int DASD_STOPPED_DC_WAIT ;
 int DASD_UNRESUMED_PM ;
 int dasd_device_set_timer (struct dasd_device*,int) ;
 int dasd_path_clear_all_verify (struct dasd_device*) ;
 int dasd_path_get_tbvpm (struct dasd_device*) ;
 int stub1 (struct dasd_device*,int ) ;

__attribute__((used)) static void __dasd_device_check_path_events(struct dasd_device *device)
{
 int rc;

 if (!dasd_path_get_tbvpm(device))
  return;

 if (device->stopped &
     ~(DASD_STOPPED_DC_WAIT | DASD_UNRESUMED_PM))
  return;
 rc = device->discipline->verify_path(device,
          dasd_path_get_tbvpm(device));
 if (rc)
  dasd_device_set_timer(device, 50);
 else
  dasd_path_clear_all_verify(device);
}
