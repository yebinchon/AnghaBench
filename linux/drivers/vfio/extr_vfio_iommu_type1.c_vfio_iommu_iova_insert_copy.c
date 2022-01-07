
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct vfio_iommu {struct list_head iova_list; } ;


 int list_splice_tail (struct list_head*,struct list_head*) ;
 int vfio_iommu_iova_free (struct list_head*) ;

__attribute__((used)) static void vfio_iommu_iova_insert_copy(struct vfio_iommu *iommu,
     struct list_head *iova_copy)
{
 struct list_head *iova = &iommu->iova_list;

 vfio_iommu_iova_free(iova);

 list_splice_tail(iova_copy, iova);
}
