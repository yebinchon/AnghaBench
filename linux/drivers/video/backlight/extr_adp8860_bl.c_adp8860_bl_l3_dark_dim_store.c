
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ADP8860_BLDM3 ;
 int adp8860_store (struct device*,char const*,size_t,int ) ;

__attribute__((used)) static ssize_t adp8860_bl_l3_dark_dim_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 return adp8860_store(dev, buf, count, ADP8860_BLDM3);
}
