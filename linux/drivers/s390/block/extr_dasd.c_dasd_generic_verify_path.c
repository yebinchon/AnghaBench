
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int dummy; } ;
typedef scalar_t__ __u8 ;


 int dasd_generic_path_operational (struct dasd_device*) ;
 int dasd_path_add_opm (struct dasd_device*,scalar_t__) ;
 int dasd_path_get_opm (struct dasd_device*) ;
 int dasd_path_set_opm (struct dasd_device*,scalar_t__) ;

int dasd_generic_verify_path(struct dasd_device *device, __u8 lpm)
{
 if (!dasd_path_get_opm(device) && lpm) {
  dasd_path_set_opm(device, lpm);
  dasd_generic_path_operational(device);
 } else
  dasd_path_add_opm(device, lpm);
 return 0;
}
