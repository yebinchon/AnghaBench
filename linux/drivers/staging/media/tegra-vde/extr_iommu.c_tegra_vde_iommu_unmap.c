
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_vde {int iova; int domain; } ;
struct iova {int dummy; } ;
typedef int dma_addr_t ;


 int __free_iova (int *,struct iova*) ;
 int iommu_unmap (int ,int ,unsigned long) ;
 int iova_dma_addr (int *,struct iova*) ;
 unsigned long iova_shift (int *) ;
 unsigned long iova_size (struct iova*) ;

void tegra_vde_iommu_unmap(struct tegra_vde *vde, struct iova *iova)
{
 unsigned long shift = iova_shift(&vde->iova);
 unsigned long size = iova_size(iova) << shift;
 dma_addr_t addr = iova_dma_addr(&vde->iova, iova);

 iommu_unmap(vde->domain, addr, size);
 __free_iova(&vde->iova, iova);
}
