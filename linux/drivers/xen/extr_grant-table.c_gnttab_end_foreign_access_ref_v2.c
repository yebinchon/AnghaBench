
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t grant_ref_t ;
struct TYPE_6__ {TYPE_2__* v2; } ;
struct TYPE_4__ {scalar_t__ flags; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;


 int GTF_reading ;
 int GTF_writing ;
 int barrier () ;
 TYPE_3__ gnttab_shared ;
 int* grstatus ;
 int mb () ;

__attribute__((used)) static int gnttab_end_foreign_access_ref_v2(grant_ref_t ref, int readonly)
{
 gnttab_shared.v2[ref].hdr.flags = 0;
 mb();
 if (grstatus[ref] & (GTF_reading|GTF_writing)) {
  return 0;
 } else {
  mb();

 }

 return 1;
}
