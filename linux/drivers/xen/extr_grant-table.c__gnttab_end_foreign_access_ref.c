
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int grant_ref_t ;
struct TYPE_2__ {int (* end_foreign_access_ref ) (int ,int) ;} ;


 TYPE_1__* gnttab_interface ;
 int stub1 (int ,int) ;

__attribute__((used)) static inline int _gnttab_end_foreign_access_ref(grant_ref_t ref, int readonly)
{
 return gnttab_interface->end_foreign_access_ref(ref, readonly);
}
