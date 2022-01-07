
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* xen_gfn_fn_t ) (int ,void*) ;
struct page {int dummy; } ;


 int XEN_PFN_PER_PAGE ;
 unsigned long page_to_xen_pfn (struct page*) ;
 int pfn_to_gfn (int ) ;

__attribute__((used)) static void xen_for_each_gfn(struct page **pages, unsigned nr_gfn,
        xen_gfn_fn_t fn, void *data)
{
 unsigned long xen_pfn = 0;
 struct page *page;
 int i;

 for (i = 0; i < nr_gfn; i++) {
  if ((i % XEN_PFN_PER_PAGE) == 0) {
   page = pages[i / XEN_PFN_PER_PAGE];
   xen_pfn = page_to_xen_pfn(page);
  }
  fn(pfn_to_gfn(xen_pfn++), data);
 }
}
