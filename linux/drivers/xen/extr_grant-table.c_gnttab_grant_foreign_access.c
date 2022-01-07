
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int domid_t ;


 int ENOSPC ;
 int get_free_entries (int) ;
 int gnttab_grant_foreign_access_ref (int,int ,unsigned long,int) ;
 scalar_t__ unlikely (int) ;

int gnttab_grant_foreign_access(domid_t domid, unsigned long frame,
    int readonly)
{
 int ref;

 ref = get_free_entries(1);
 if (unlikely(ref < 0))
  return -ENOSPC;

 gnttab_grant_foreign_access_ref(ref, domid, frame, readonly);

 return ref;
}
