
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_vde {int * domain; int group; int iova; int iova_resv_static_addresses; int iova_resv_last_page; } ;


 int __free_iova (int *,int ) ;
 int iommu_detach_group (int *,int ) ;
 int iommu_domain_free (int *) ;
 int iommu_group_put (int ) ;
 int iova_cache_put () ;
 int put_iova_domain (int *) ;

void tegra_vde_iommu_deinit(struct tegra_vde *vde)
{
 if (vde->domain) {
  __free_iova(&vde->iova, vde->iova_resv_last_page);
  __free_iova(&vde->iova, vde->iova_resv_static_addresses);
  iommu_detach_group(vde->domain, vde->group);
  put_iova_domain(&vde->iova);
  iova_cache_put();
  iommu_domain_free(vde->domain);
  iommu_group_put(vde->group);

  vde->domain = ((void*)0);
 }
}
