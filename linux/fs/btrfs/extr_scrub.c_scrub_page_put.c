
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scrub_page {scalar_t__ page; int refs; } ;


 int __free_page (scalar_t__) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct scrub_page*) ;

__attribute__((used)) static void scrub_page_put(struct scrub_page *spage)
{
 if (atomic_dec_and_test(&spage->refs)) {
  if (spage->page)
   __free_page(spage->page);
  kfree(spage);
 }
}
