
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_uid {scalar_t__ type; } ;
struct dasd_device {TYPE_1__* discipline; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* get_uid ) (struct dasd_device*,struct dasd_uid*) ;} ;


 scalar_t__ IS_ERR (struct dasd_device*) ;
 scalar_t__ UA_BASE_PAV_ALIAS ;
 scalar_t__ UA_HYPER_PAV_ALIAS ;
 struct dasd_device* dasd_device_from_cdev (int ) ;
 int dasd_put_device (struct dasd_device*) ;
 int sprintf (char*,char*) ;
 int stub1 (struct dasd_device*,struct dasd_uid*) ;
 int to_ccwdev (struct device*) ;

__attribute__((used)) static ssize_t dasd_alias_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct dasd_device *device;
 struct dasd_uid uid;

 device = dasd_device_from_cdev(to_ccwdev(dev));
 if (IS_ERR(device))
  return sprintf(buf, "0\n");

 if (device->discipline && device->discipline->get_uid &&
     !device->discipline->get_uid(device, &uid)) {
  if (uid.type == UA_BASE_PAV_ALIAS ||
      uid.type == UA_HYPER_PAV_ALIAS) {
   dasd_put_device(device);
   return sprintf(buf, "1\n");
  }
 }
 dasd_put_device(device);

 return sprintf(buf, "0\n");
}
