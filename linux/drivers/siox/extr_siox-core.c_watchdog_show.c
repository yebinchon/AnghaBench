
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct siox_device {int status_read_clean; int smaster; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int SIOX_STATUS_WDG ;
 int siox_master_lock (int ) ;
 int siox_master_unlock (int ) ;
 int sprintf (char*,char*,int) ;
 struct siox_device* to_siox_device (struct device*) ;

__attribute__((used)) static ssize_t watchdog_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct siox_device *sdev = to_siox_device(dev);
 u8 status;

 siox_master_lock(sdev->smaster);

 status = sdev->status_read_clean;

 siox_master_unlock(sdev->smaster);

 return sprintf(buf, "%d\n", status & SIOX_STATUS_WDG);
}
