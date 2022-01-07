
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tegra_vde {int iova; TYPE_2__* domain; } ;
struct sg_table {int nents; int sgl; } ;
struct iova {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {unsigned long aperture_end; } ;
struct TYPE_4__ {TYPE_1__ geometry; } ;


 int ENOMEM ;
 int ENXIO ;
 int IOMMU_READ ;
 int IOMMU_WRITE ;
 int __free_iova (int *,struct iova*) ;
 struct iova* alloc_iova (int *,size_t,unsigned long,int) ;
 size_t iommu_map_sg (TYPE_2__*,int ,int ,int ,int) ;
 size_t iova_align (int *,size_t) ;
 int iova_dma_addr (int *,struct iova*) ;
 unsigned long iova_shift (int *) ;

int tegra_vde_iommu_map(struct tegra_vde *vde,
   struct sg_table *sgt,
   struct iova **iovap,
   size_t size)
{
 struct iova *iova;
 unsigned long shift;
 unsigned long end;
 dma_addr_t addr;

 end = vde->domain->geometry.aperture_end;
 size = iova_align(&vde->iova, size);
 shift = iova_shift(&vde->iova);

 iova = alloc_iova(&vde->iova, size >> shift, end >> shift, 1);
 if (!iova)
  return -ENOMEM;

 addr = iova_dma_addr(&vde->iova, iova);

 size = iommu_map_sg(vde->domain, addr, sgt->sgl, sgt->nents,
       IOMMU_READ | IOMMU_WRITE);
 if (!size) {
  __free_iova(&vde->iova, iova);
  return -ENXIO;
 }

 *iovap = iova;

 return 0;
}
