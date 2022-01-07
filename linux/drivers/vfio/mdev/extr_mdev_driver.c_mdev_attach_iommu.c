
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_device {int dev; } ;
struct iommu_group {int dummy; } ;


 scalar_t__ IS_ERR (struct iommu_group*) ;
 int PTR_ERR (struct iommu_group*) ;
 int dev_info (int *,char*,int ) ;
 int iommu_group_add_device (struct iommu_group*,int *) ;
 struct iommu_group* iommu_group_alloc () ;
 int iommu_group_id (struct iommu_group*) ;
 int iommu_group_put (struct iommu_group*) ;

__attribute__((used)) static int mdev_attach_iommu(struct mdev_device *mdev)
{
 int ret;
 struct iommu_group *group;

 group = iommu_group_alloc();
 if (IS_ERR(group))
  return PTR_ERR(group);

 ret = iommu_group_add_device(group, &mdev->dev);
 if (!ret)
  dev_info(&mdev->dev, "MDEV: group_id = %d\n",
    iommu_group_id(group));

 iommu_group_put(group);
 return ret;
}
