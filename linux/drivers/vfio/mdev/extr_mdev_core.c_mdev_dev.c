
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct mdev_device {struct device dev; } ;



struct device *mdev_dev(struct mdev_device *mdev)
{
 return &mdev->dev;
}
