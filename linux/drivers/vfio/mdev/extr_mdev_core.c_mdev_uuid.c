
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_device {int const uuid; } ;
typedef int guid_t ;



const guid_t *mdev_uuid(struct mdev_device *mdev)
{
 return &mdev->uuid;
}
