
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_attr_revision ;
 int dev_attr_size ;
 int device_create_file (struct device*,int *) ;

__attribute__((used)) static void gbefb_create_sysfs(struct device *dev)
{
 device_create_file(dev, &dev_attr_size);
 device_create_file(dev, &dev_attr_revision);
}
