
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dasd_uid {int base_unit_addr; char* vduit; char* vendor; char* serial; int ssid; } ;
struct TYPE_3__ {int base_unit_addr; } ;
struct dasd_eckd_private {TYPE_1__ uid; } ;
struct dasd_device {TYPE_2__* cdev; struct dasd_eckd_private* private; } ;
typedef int print_uid ;
struct TYPE_4__ {int dev; } ;


 int dasd_alias_remove_device (struct dasd_device*) ;
 int dasd_alias_update_add_device (struct dasd_device*) ;
 int dasd_eckd_generate_uid (struct dasd_device*) ;
 int dasd_eckd_get_uid (struct dasd_device*,struct dasd_uid*) ;
 int dasd_eckd_read_conf (struct dasd_device*) ;
 int dev_info (int *,char*,char*) ;
 int get_ccwdev_lock (TYPE_2__*) ;
 int snprintf (char*,int,char*,char*,char*,int,int,...) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int dasd_eckd_reload_device(struct dasd_device *device)
{
 struct dasd_eckd_private *private = device->private;
 int rc, old_base;
 char print_uid[60];
 struct dasd_uid uid;
 unsigned long flags;





 dasd_alias_remove_device(device);

 spin_lock_irqsave(get_ccwdev_lock(device->cdev), flags);
 old_base = private->uid.base_unit_addr;
 spin_unlock_irqrestore(get_ccwdev_lock(device->cdev), flags);


 rc = dasd_eckd_read_conf(device);
 if (rc)
  goto out_err;

 rc = dasd_eckd_generate_uid(device);
 if (rc)
  goto out_err;




 dasd_alias_update_add_device(device);

 dasd_eckd_get_uid(device, &uid);

 if (old_base != uid.base_unit_addr) {
  if (strlen(uid.vduit) > 0)
   snprintf(print_uid, sizeof(print_uid),
     "%s.%s.%04x.%02x.%s", uid.vendor, uid.serial,
     uid.ssid, uid.base_unit_addr, uid.vduit);
  else
   snprintf(print_uid, sizeof(print_uid),
     "%s.%s.%04x.%02x", uid.vendor, uid.serial,
     uid.ssid, uid.base_unit_addr);

  dev_info(&device->cdev->dev,
    "An Alias device was reassigned to a new base device "
    "with UID: %s\n", print_uid);
 }
 return 0;

out_err:
 return -1;
}
