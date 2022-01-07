
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 int support_device_change ;

__attribute__((used)) static ssize_t support_device_change_show(struct device_driver *dd, char *buf)
{
 return sprintf(buf, "%u\n", support_device_change);
}
