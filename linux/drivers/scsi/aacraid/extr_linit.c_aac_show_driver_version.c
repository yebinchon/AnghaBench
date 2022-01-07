
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 char* aac_driver_version ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t aac_show_driver_version(struct device *device,
     struct device_attribute *attr,
     char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%s\n", aac_driver_version);
}
