
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int domid_t ;


 int ENOSPC ;
 int get_free_entries (int) ;
 int gnttab_grant_foreign_transfer_ref (int,int ,unsigned long) ;
 scalar_t__ unlikely (int) ;

int gnttab_grant_foreign_transfer(domid_t domid, unsigned long pfn)
{
 int ref;

 ref = get_free_entries(1);
 if (unlikely(ref < 0))
  return -ENOSPC;
 gnttab_grant_foreign_transfer_ref(ref, domid, pfn);

 return ref;
}
