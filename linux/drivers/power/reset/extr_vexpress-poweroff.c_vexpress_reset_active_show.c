
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct device* vexpress_restart_device ;

__attribute__((used)) static ssize_t vexpress_reset_active_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%d\n", vexpress_restart_device == dev);
}
