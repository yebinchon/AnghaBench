
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 char* SNIC_DRV_VERSION ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t
snic_show_drv_version(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%s\n", SNIC_DRV_VERSION);
}
