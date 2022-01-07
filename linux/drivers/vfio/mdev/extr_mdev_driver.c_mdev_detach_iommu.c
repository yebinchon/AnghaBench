
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_device {int dev; } ;


 int dev_info (int *,char*) ;
 int iommu_group_remove_device (int *) ;

__attribute__((used)) static void mdev_detach_iommu(struct mdev_device *mdev)
{
 iommu_group_remove_device(&mdev->dev);
 dev_info(&mdev->dev, "MDEV: detaching iommu\n");
}
