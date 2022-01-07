
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int grant_ref_t ;
struct TYPE_2__ {int (* query_foreign_access ) (int ) ;} ;


 TYPE_1__* gnttab_interface ;
 int stub1 (int ) ;

int gnttab_query_foreign_access(grant_ref_t ref)
{
 return gnttab_interface->query_foreign_access(ref);
}
