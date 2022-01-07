
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int MSI_STANDARD_EC_3G_MASK ;
 int set_device_state (char const*,size_t,int ) ;

__attribute__((used)) static ssize_t store_threeg(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 return set_device_state(buf, count, MSI_STANDARD_EC_3G_MASK);
}
