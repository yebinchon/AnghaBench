
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grant_ref_t ;


 int gnttab_add_deferred (int ,int,int *) ;
 scalar_t__ gnttab_end_foreign_access_ref (int ,int) ;
 int put_free_entry (int ) ;
 int put_page (int *) ;
 int * virt_to_page (unsigned long) ;

void gnttab_end_foreign_access(grant_ref_t ref, int readonly,
          unsigned long page)
{
 if (gnttab_end_foreign_access_ref(ref, readonly)) {
  put_free_entry(ref);
  if (page != 0)
   put_page(virt_to_page(page));
 } else
  gnttab_add_deferred(ref, readonly,
        page ? virt_to_page(page) : ((void*)0));
}
