
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_attr_revision ;
 int dev_attr_size ;
 int device_remove_file (struct device*,int *) ;

__attribute__((used)) static void gbefb_remove_sysfs(struct device *dev)
{
 device_remove_file(dev, &dev_attr_size);
 device_remove_file(dev, &dev_attr_revision);
}
