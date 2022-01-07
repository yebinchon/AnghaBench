
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int SYSFS_OFFSET ;
 int pm8001_get_gsm_dump (struct device*,int ,char*) ;

__attribute__((used)) static ssize_t pm8001_ctl_gsm_log_show(struct device *cdev,
 struct device_attribute *attr, char *buf)
{
 ssize_t count;

 count = pm8001_get_gsm_dump(cdev, SYSFS_OFFSET, buf);
 return count;
}
