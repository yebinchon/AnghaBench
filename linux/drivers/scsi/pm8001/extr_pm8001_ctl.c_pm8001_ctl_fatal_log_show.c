
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int pm80xx_get_fatal_dump (struct device*,struct device_attribute*,char*) ;

__attribute__((used)) static ssize_t pm8001_ctl_fatal_log_show(struct device *cdev,
 struct device_attribute *attr, char *buf)
{
 ssize_t count;

 count = pm80xx_get_fatal_dump(cdev, attr, buf);
 return count;
}
