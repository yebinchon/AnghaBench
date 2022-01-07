
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; int ssid; } ;
struct dasd_eckd_private {TYPE_1__ uid; } ;
struct dasd_device {int cdev; struct dasd_eckd_private* private; } ;


 int DBF_EVENT_DEVID (int ,int ,char*,int ,int) ;
 int DBF_WARNING ;
 scalar_t__ MACHINE_IS_VM ;
 scalar_t__ UA_BASE_PAV_ALIAS ;
 scalar_t__ UA_HYPER_PAV_ALIAS ;
 int dasd_eckd_psf_ssc (struct dasd_device*,int,unsigned long) ;
 scalar_t__ dasd_nopav ;

__attribute__((used)) static int dasd_eckd_validate_server(struct dasd_device *device,
         unsigned long flags)
{
 struct dasd_eckd_private *private = device->private;
 int enable_pav, rc;

 if (private->uid.type == UA_BASE_PAV_ALIAS ||
     private->uid.type == UA_HYPER_PAV_ALIAS)
  return 0;
 if (dasd_nopav || MACHINE_IS_VM)
  enable_pav = 0;
 else
  enable_pav = 1;
 rc = dasd_eckd_psf_ssc(device, enable_pav, flags);



 DBF_EVENT_DEVID(DBF_WARNING, device->cdev, "PSF-SSC for SSID %04x "
   "returned rc=%d", private->uid.ssid, rc);
 return rc;
}
