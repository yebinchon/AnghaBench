
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
typedef size_t grant_ref_t ;
struct TYPE_8__ {TYPE_3__* v2; } ;
struct TYPE_5__ {unsigned long frame; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_7__ {TYPE_1__ full_page; TYPE_2__ hdr; } ;


 int BUG_ON (int) ;
 int GTF_transfer_committed ;
 int GTF_transfer_completed ;
 int cpu_relax () ;
 TYPE_4__ gnttab_shared ;
 int rmb () ;
 int sync_cmpxchg (int*,int,int ) ;

__attribute__((used)) static unsigned long gnttab_end_foreign_transfer_ref_v2(grant_ref_t ref)
{
 unsigned long frame;
 u16 flags;
 u16 *pflags;

 pflags = &gnttab_shared.v2[ref].hdr.flags;





 while (!((flags = *pflags) & GTF_transfer_committed)) {
  if (sync_cmpxchg(pflags, flags, 0) == flags)
   return 0;
  cpu_relax();
 }


 while (!(flags & GTF_transfer_completed)) {
  flags = *pflags;
  cpu_relax();
 }

 rmb();
 frame = gnttab_shared.v2[ref].full_page.frame;
 BUG_ON(frame == 0);

 return frame;
}
