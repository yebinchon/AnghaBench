
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_device {void* driver_data; } ;



void *mdev_get_drvdata(struct mdev_device *mdev)
{
 return mdev->driver_data;
}
