
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 char* ASD_DRIVER_VERSION ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t version_show(struct device_driver *driver, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%s\n", ASD_DRIVER_VERSION);
}
