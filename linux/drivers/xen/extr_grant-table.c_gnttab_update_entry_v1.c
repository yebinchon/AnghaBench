
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t grant_ref_t ;
typedef int domid_t ;
struct TYPE_4__ {TYPE_1__* v1; } ;
struct TYPE_3__ {unsigned long frame; unsigned int flags; int domid; } ;


 TYPE_2__ gnttab_shared ;
 int wmb () ;

__attribute__((used)) static void gnttab_update_entry_v1(grant_ref_t ref, domid_t domid,
       unsigned long frame, unsigned flags)
{
 gnttab_shared.v1[ref].domid = domid;
 gnttab_shared.v1[ref].frame = frame;
 wmb();
 gnttab_shared.v1[ref].flags = flags;
}
