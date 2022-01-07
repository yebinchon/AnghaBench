
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t grant_ref_t ;
struct TYPE_4__ {TYPE_1__* v1; } ;
struct TYPE_3__ {int flags; } ;


 int GTF_reading ;
 int GTF_writing ;
 TYPE_2__ gnttab_shared ;

__attribute__((used)) static int gnttab_query_foreign_access_v1(grant_ref_t ref)
{
 return gnttab_shared.v1[ref].flags & (GTF_reading|GTF_writing);
}
