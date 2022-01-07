
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdev_device {TYPE_1__* parent; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;



struct device *mdev_parent_dev(struct mdev_device *mdev)
{
 return mdev->parent->dev;
}
