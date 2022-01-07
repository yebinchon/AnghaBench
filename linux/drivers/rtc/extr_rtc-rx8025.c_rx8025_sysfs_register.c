
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_attr_clock_adjust_ppb ;
 int device_create_file (struct device*,int *) ;

__attribute__((used)) static int rx8025_sysfs_register(struct device *dev)
{
 return device_create_file(dev, &dev_attr_clock_adjust_ppb);
}
