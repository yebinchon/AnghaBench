
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int integrator_coreid ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t integrator_get_manf(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 return sprintf(buf, "%02x\n", integrator_coreid >> 24);
}
