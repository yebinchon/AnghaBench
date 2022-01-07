
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ADP8870_BLMX3 ;
 int adp8870_show (struct device*,char*,int ) ;

__attribute__((used)) static ssize_t adp8870_bl_l3_office_max_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 return adp8870_show(dev, buf, ADP8870_BLMX3);
}
