
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maple_device {int dev; } ;


 int device_unregister (int *) ;

__attribute__((used)) static void maple_detach_driver(struct maple_device *mdev)
{
 device_unregister(&mdev->dev);
}
