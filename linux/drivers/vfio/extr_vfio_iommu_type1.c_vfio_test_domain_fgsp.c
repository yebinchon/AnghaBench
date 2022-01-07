
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_domain {int prot; int fgsp; int domain; } ;
struct page {int dummy; } ;


 int GFP_KERNEL ;
 int IOMMU_READ ;
 int IOMMU_WRITE ;
 int PAGE_SIZE ;
 int __GFP_ZERO ;
 int __free_pages (struct page*,int) ;
 struct page* alloc_pages (int,int) ;
 int get_order (int) ;
 int iommu_map (int ,int ,int ,int,int) ;
 size_t iommu_unmap (int ,int,int) ;
 int page_to_phys (struct page*) ;

__attribute__((used)) static void vfio_test_domain_fgsp(struct vfio_domain *domain)
{
 struct page *pages;
 int ret, order = get_order(PAGE_SIZE * 2);

 pages = alloc_pages(GFP_KERNEL | __GFP_ZERO, order);
 if (!pages)
  return;

 ret = iommu_map(domain->domain, 0, page_to_phys(pages), PAGE_SIZE * 2,
   IOMMU_READ | IOMMU_WRITE | domain->prot);
 if (!ret) {
  size_t unmapped = iommu_unmap(domain->domain, 0, PAGE_SIZE);

  if (unmapped == PAGE_SIZE)
   iommu_unmap(domain->domain, PAGE_SIZE, PAGE_SIZE);
  else
   domain->fgsp = 1;
 }

 __free_pages(pages, order);
}
