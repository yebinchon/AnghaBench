
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_end; int vm_start; struct page** vm_private_data; } ;
struct page {int dummy; } ;


 int XENFEAT_auto_translated_physmap ;
 int XEN_PAGE_SHIFT ;
 int free_xenballooned_pages (int,struct page**) ;
 int kfree (struct page**) ;
 int pr_crit (char*,int,int) ;
 int vma_pages (struct vm_area_struct*) ;
 int xen_feature (int ) ;
 int xen_unmap_domain_gfn_range (struct vm_area_struct*,int,struct page**) ;

__attribute__((used)) static void privcmd_close(struct vm_area_struct *vma)
{
 struct page **pages = vma->vm_private_data;
 int numpgs = vma_pages(vma);
 int numgfns = (vma->vm_end - vma->vm_start) >> XEN_PAGE_SHIFT;
 int rc;

 if (!xen_feature(XENFEAT_auto_translated_physmap) || !numpgs || !pages)
  return;

 rc = xen_unmap_domain_gfn_range(vma, numgfns, pages);
 if (rc == 0)
  free_xenballooned_pages(numpgs, pages);
 else
  pr_crit("unable to unmap MFN range: leaking %d pages. rc=%d\n",
   numpgs, rc);
 kfree(pages);
}
