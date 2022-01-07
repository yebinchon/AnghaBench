
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
typedef size_t grant_ref_t ;
struct TYPE_4__ {TYPE_1__* v1; } ;
struct TYPE_3__ {int flags; } ;


 int GTF_reading ;
 int GTF_writing ;
 TYPE_2__ gnttab_shared ;
 int sync_cmpxchg (int*,int,int ) ;

__attribute__((used)) static int gnttab_end_foreign_access_ref_v1(grant_ref_t ref, int readonly)
{
 u16 flags, nflags;
 u16 *pflags;

 pflags = &gnttab_shared.v1[ref].flags;
 nflags = *pflags;
 do {
  flags = nflags;
  if (flags & (GTF_reading|GTF_writing))
   return 0;
 } while ((nflags = sync_cmpxchg(pflags, flags, 0)) != flags);

 return 1;
}
