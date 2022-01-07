
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova {int dummy; } ;
struct imgu_device {int iova_domain; int mmu; } ;
struct imgu_css_map {int daddr; } ;


 scalar_t__ WARN_ON (int) ;
 int __free_iova (int *,struct iova*) ;
 struct iova* find_iova (int *,int ) ;
 int imgu_mmu_unmap (int ,int ,int) ;
 int iova_dma_addr (int *,struct iova*) ;
 int iova_pfn (int *,int ) ;
 int iova_shift (int *) ;
 int iova_size (struct iova*) ;

void imgu_dmamap_unmap(struct imgu_device *imgu, struct imgu_css_map *map)
{
 struct iova *iova;

 iova = find_iova(&imgu->iova_domain,
    iova_pfn(&imgu->iova_domain, map->daddr));
 if (WARN_ON(!iova))
  return;

 imgu_mmu_unmap(imgu->mmu, iova_dma_addr(&imgu->iova_domain, iova),
         iova_size(iova) << iova_shift(&imgu->iova_domain));

 __free_iova(&imgu->iova_domain, iova);
}
