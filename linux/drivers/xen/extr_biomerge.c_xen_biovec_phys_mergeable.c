
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct bio_vec {scalar_t__ bv_len; scalar_t__ bv_offset; struct page const* bv_page; } ;


 unsigned long PFN_DOWN (scalar_t__) ;
 int page_to_pfn (struct page const*) ;
 unsigned long pfn_to_bfn (int ) ;

bool xen_biovec_phys_mergeable(const struct bio_vec *vec1,
          const struct page *page)
{

 unsigned long bfn1 = pfn_to_bfn(page_to_pfn(vec1->bv_page));
 unsigned long bfn2 = pfn_to_bfn(page_to_pfn(page));

 return bfn1 + PFN_DOWN(vec1->bv_offset + vec1->bv_len) == bfn2;







}
