
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ADP8860_BLDM2 ;
 int adp8860_show (struct device*,char*,int ) ;

__attribute__((used)) static ssize_t adp8860_bl_l2_office_dim_show(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 return adp8860_show(dev, buf, ADP8860_BLDM2);
}
