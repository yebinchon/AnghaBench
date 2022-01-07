
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain_device {int dummy; } ;


 int mvs_dev_gone_notify (struct domain_device*) ;

void mvs_dev_gone(struct domain_device *dev)
{
 mvs_dev_gone_notify(dev);
}
