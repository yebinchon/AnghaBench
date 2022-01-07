
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char* DRV_VERSION ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t
mvs_show_driver_version(struct device *cdev,
  struct device_attribute *attr, char *buffer)
{
 return snprintf(buffer, PAGE_SIZE, "%s\n", DRV_VERSION);
}
