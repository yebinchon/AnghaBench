
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;


 int IOMMU_DEV_FEAT_AUX ;
 int iommu_aux_detach_device (struct iommu_domain*,struct device*) ;
 int iommu_detach_device (struct iommu_domain*,struct device*) ;
 scalar_t__ iommu_dev_feature_enabled (struct device*,int ) ;
 struct device* vfio_mdev_get_iommu_device (struct device*) ;

__attribute__((used)) static int vfio_mdev_detach_domain(struct device *dev, void *data)
{
 struct iommu_domain *domain = data;
 struct device *iommu_device;

 iommu_device = vfio_mdev_get_iommu_device(dev);
 if (iommu_device) {
  if (iommu_dev_feature_enabled(iommu_device, IOMMU_DEV_FEAT_AUX))
   iommu_aux_detach_device(domain, iommu_device);
  else
   iommu_detach_device(domain, iommu_device);
 }

 return 0;
}
