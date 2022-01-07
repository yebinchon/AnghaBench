
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_device {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ dev_is_mdev (struct device*) ;
 struct mdev_device* to_mdev_device (struct device*) ;

struct mdev_device *mdev_from_dev(struct device *dev)
{
 return dev_is_mdev(dev) ? to_mdev_device(dev) : ((void*)0);
}
