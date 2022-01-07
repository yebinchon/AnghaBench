
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int integrator_coreid ;
 char* integrator_fpga_str (int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t integrator_get_fpga(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 return sprintf(buf, "%s\n", integrator_fpga_str(integrator_coreid));
}
