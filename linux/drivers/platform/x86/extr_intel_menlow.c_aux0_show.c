
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int aux_show (struct device*,struct device_attribute*,char*,int ) ;

__attribute__((used)) static ssize_t aux0_show(struct device *dev,
    struct device_attribute *dev_attr, char *buf)
{
 return aux_show(dev, dev_attr, buf, 0);
}
