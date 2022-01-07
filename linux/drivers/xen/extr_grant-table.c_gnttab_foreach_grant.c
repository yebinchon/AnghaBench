
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* xen_grant_fn_t ) (int ,unsigned int,scalar_t__,void*) ;
struct page {int dummy; } ;


 scalar_t__ XEN_PAGE_SIZE ;
 unsigned int XEN_PFN_PER_PAGE ;
 unsigned long page_to_xen_pfn (struct page*) ;
 int pfn_to_gfn (unsigned long) ;

void gnttab_foreach_grant(struct page **pages,
     unsigned int nr_grefs,
     xen_grant_fn_t fn,
     void *data)
{
 unsigned int goffset = 0;
 unsigned long xen_pfn = 0;
 unsigned int i;

 for (i = 0; i < nr_grefs; i++) {
  if ((i % XEN_PFN_PER_PAGE) == 0) {
   xen_pfn = page_to_xen_pfn(pages[i / XEN_PFN_PER_PAGE]);
   goffset = 0;
  }

  fn(pfn_to_gfn(xen_pfn), goffset, XEN_PAGE_SIZE, data);

  goffset += XEN_PAGE_SIZE;
  xen_pfn++;
 }
}
