
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int thermal_build_list_of_policies (char*) ;

__attribute__((used)) static ssize_t
available_policies_show(struct device *dev, struct device_attribute *devattr,
   char *buf)
{
 return thermal_build_list_of_policies(buf);
}
