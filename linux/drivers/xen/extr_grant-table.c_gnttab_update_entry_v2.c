
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t grant_ref_t ;
typedef int domid_t ;
struct TYPE_8__ {TYPE_3__* v2; } ;
struct TYPE_6__ {unsigned int flags; int domid; } ;
struct TYPE_5__ {unsigned long frame; } ;
struct TYPE_7__ {TYPE_2__ hdr; TYPE_1__ full_page; } ;


 unsigned int GTF_permit_access ;
 TYPE_4__ gnttab_shared ;
 int wmb () ;

__attribute__((used)) static void gnttab_update_entry_v2(grant_ref_t ref, domid_t domid,
       unsigned long frame, unsigned int flags)
{
 gnttab_shared.v2[ref].hdr.domid = domid;
 gnttab_shared.v2[ref].full_page.frame = frame;
 wmb();
 gnttab_shared.v2[ref].hdr.flags = GTF_permit_access | flags;
}
