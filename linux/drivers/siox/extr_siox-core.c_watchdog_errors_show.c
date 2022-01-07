
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siox_device {unsigned int watchdog_errors; int smaster; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int siox_master_lock (int ) ;
 int siox_master_unlock (int ) ;
 int sprintf (char*,char*,unsigned int) ;
 struct siox_device* to_siox_device (struct device*) ;

__attribute__((used)) static ssize_t watchdog_errors_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct siox_device *sdev = to_siox_device(dev);
 unsigned int watchdog_errors;

 siox_master_lock(sdev->smaster);

 watchdog_errors = sdev->watchdog_errors;

 siox_master_unlock(sdev->smaster);

 return sprintf(buf, "%u\n", watchdog_errors);
}
