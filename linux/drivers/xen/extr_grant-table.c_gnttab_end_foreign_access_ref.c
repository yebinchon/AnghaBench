
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grant_ref_t ;


 scalar_t__ _gnttab_end_foreign_access_ref (int ,int) ;
 int pr_warn (char*,int ) ;

int gnttab_end_foreign_access_ref(grant_ref_t ref, int readonly)
{
 if (_gnttab_end_foreign_access_ref(ref, readonly))
  return 1;
 pr_warn("WARNING: g.e. %#x still in use!\n", ref);
 return 0;
}
