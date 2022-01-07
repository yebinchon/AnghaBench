
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageReserved (struct page*) ;
 scalar_t__ PageTail (struct page*) ;
 struct page* compound_head (struct page*) ;
 struct page* pfn_to_page (unsigned long) ;
 scalar_t__ pfn_valid (unsigned long) ;
 int smp_rmb () ;

__attribute__((used)) static bool is_invalid_reserved_pfn(unsigned long pfn)
{
 if (pfn_valid(pfn)) {
  bool reserved;
  struct page *tail = pfn_to_page(pfn);
  struct page *head = compound_head(tail);
  reserved = !!(PageReserved(head));
  if (head != tail) {
   smp_rmb();
   if (PageTail(tail))
    return reserved;
  }
  return PageReserved(tail);
 }

 return 1;
}
