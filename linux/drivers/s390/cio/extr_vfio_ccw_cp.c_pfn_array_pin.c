
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfn_array {int pa_nr; int pa_iova_pfn; int pa_pfn; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int IOMMU_READ ;
 int IOMMU_WRITE ;
 int vfio_pin_pages (struct device*,int ,int,int,int ) ;
 int vfio_unpin_pages (struct device*,int ,int) ;

__attribute__((used)) static int pfn_array_pin(struct pfn_array *pa, struct device *mdev)
{
 int ret = 0;

 ret = vfio_pin_pages(mdev, pa->pa_iova_pfn, pa->pa_nr,
        IOMMU_READ | IOMMU_WRITE, pa->pa_pfn);

 if (ret < 0) {
  goto err_out;
 } else if (ret > 0 && ret != pa->pa_nr) {
  vfio_unpin_pages(mdev, pa->pa_iova_pfn, ret);
  ret = -EINVAL;
  goto err_out;
 }

 return ret;

err_out:
 pa->pa_nr = 0;

 return ret;
}
