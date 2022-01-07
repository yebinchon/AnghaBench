
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int grant_ref_t ;
typedef int domid_t ;
struct TYPE_2__ {int (* update_entry ) (int ,int ,unsigned long,int ) ;} ;


 int GTF_accept_transfer ;
 TYPE_1__* gnttab_interface ;
 int stub1 (int ,int ,unsigned long,int ) ;

void gnttab_grant_foreign_transfer_ref(grant_ref_t ref, domid_t domid,
           unsigned long pfn)
{
 gnttab_interface->update_entry(ref, domid, pfn, GTF_accept_transfer);
}
