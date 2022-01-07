
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {int dev; } ;


 int mdev_register_device (int *,int *) ;
 int vfio_ccw_mdev_ops ;

int vfio_ccw_mdev_reg(struct subchannel *sch)
{
 return mdev_register_device(&sch->dev, &vfio_ccw_mdev_ops);
}
