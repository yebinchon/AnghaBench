
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* cdev; } ;
typedef int __u8 ;
struct TYPE_2__ {int dev; } ;


 int dasd_path_add_nohpfpm (struct dasd_device*,int) ;
 int dasd_path_get_opm (struct dasd_device*) ;
 int dasd_path_remove_opm (struct dasd_device*,int) ;
 int dev_err (int *,char*,int) ;

__attribute__((used)) static int dasd_eckd_disable_hpf_path(struct dasd_device *device, __u8 lpum)
{
 if (~lpum & dasd_path_get_opm(device)) {
  dasd_path_add_nohpfpm(device, lpum);
  dasd_path_remove_opm(device, lpum);
  dev_err(&device->cdev->dev,
   "Channel path %02X lost HPF functionality and is disabled\n",
   lpum);
  return 1;
 }
 return 0;
}
