
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;


 int dasd_alias_disconnect_device_from_lcu (struct dasd_device*) ;
 int dasd_alias_remove_device (struct dasd_device*) ;

__attribute__((used)) static int dasd_eckd_pm_freeze(struct dasd_device *device)
{





 dasd_alias_remove_device(device);
 dasd_alias_disconnect_device_from_lcu(device);

 return 0;
}
