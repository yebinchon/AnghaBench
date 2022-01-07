
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int grant_ref_t ;
struct TYPE_2__ {unsigned long (* end_foreign_transfer_ref ) (int ) ;} ;


 TYPE_1__* gnttab_interface ;
 unsigned long stub1 (int ) ;

unsigned long gnttab_end_foreign_transfer_ref(grant_ref_t ref)
{
 return gnttab_interface->end_foreign_transfer_ref(ref);
}
