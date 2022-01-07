
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int charge_end_threshold ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t charge_control_end_threshold_show(struct device *device,
       struct device_attribute *attr,
       char *buf)
{
 return sprintf(buf, "%d\n", charge_end_threshold);
}
