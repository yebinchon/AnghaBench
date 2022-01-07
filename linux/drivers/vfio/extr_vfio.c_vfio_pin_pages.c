
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfio_iommu_driver {TYPE_1__* ops; } ;
struct vfio_group {struct vfio_container* container; } ;
struct vfio_container {int iommu_data; struct vfio_iommu_driver* iommu_driver; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* pin_pages ) (int ,unsigned long*,int,int,unsigned long*) ;} ;


 int E2BIG ;
 int EINVAL ;
 int ENODEV ;
 int ENOTTY ;
 int VFIO_PIN_PAGES_MAX_ENTRIES ;
 scalar_t__ likely (int ) ;
 int stub1 (int ,unsigned long*,int,int,unsigned long*) ;
 int vfio_group_add_container_user (struct vfio_group*) ;
 struct vfio_group* vfio_group_get_from_dev (struct device*) ;
 int vfio_group_put (struct vfio_group*) ;
 int vfio_group_try_dissolve_container (struct vfio_group*) ;

int vfio_pin_pages(struct device *dev, unsigned long *user_pfn, int npage,
     int prot, unsigned long *phys_pfn)
{
 struct vfio_container *container;
 struct vfio_group *group;
 struct vfio_iommu_driver *driver;
 int ret;

 if (!dev || !user_pfn || !phys_pfn || !npage)
  return -EINVAL;

 if (npage > VFIO_PIN_PAGES_MAX_ENTRIES)
  return -E2BIG;

 group = vfio_group_get_from_dev(dev);
 if (!group)
  return -ENODEV;

 ret = vfio_group_add_container_user(group);
 if (ret)
  goto err_pin_pages;

 container = group->container;
 driver = container->iommu_driver;
 if (likely(driver && driver->ops->pin_pages))
  ret = driver->ops->pin_pages(container->iommu_data, user_pfn,
          npage, prot, phys_pfn);
 else
  ret = -ENOTTY;

 vfio_group_try_dissolve_container(group);

err_pin_pages:
 vfio_group_put(group);
 return ret;
}
