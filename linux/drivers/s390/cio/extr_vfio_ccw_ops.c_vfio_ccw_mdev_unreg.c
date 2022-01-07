
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int dev; } ;


 int mdev_unregister_device (int *) ;

void vfio_ccw_mdev_unreg(struct subchannel *sch)
{
 mdev_unregister_device(&sch->dev);
}
