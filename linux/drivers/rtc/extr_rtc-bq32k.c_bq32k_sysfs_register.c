
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_attr_trickle_charge_bypass ;
 int device_create_file (struct device*,int *) ;

__attribute__((used)) static int bq32k_sysfs_register(struct device *dev)
{
 return device_create_file(dev, &dev_attr_trickle_charge_bypass);
}
