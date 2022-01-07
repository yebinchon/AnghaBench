
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain_device {int dummy; } ;


 int mvs_dev_found_notify (struct domain_device*,int) ;

int mvs_dev_found(struct domain_device *dev)
{
 return mvs_dev_found_notify(dev, 1);
}
