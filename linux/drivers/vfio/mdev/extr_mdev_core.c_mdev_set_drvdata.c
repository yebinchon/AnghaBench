
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_device {void* driver_data; } ;



void mdev_set_drvdata(struct mdev_device *mdev, void *data)
{
 mdev->driver_data = data;
}
