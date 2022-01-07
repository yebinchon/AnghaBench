
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int vfio_del_group_dev (struct device*) ;

__attribute__((used)) static void vfio_mdev_remove(struct device *dev)
{
 vfio_del_group_dev(dev);
}
