
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t grant_ref_t ;


 int GTF_reading ;
 int GTF_writing ;
 int* grstatus ;

__attribute__((used)) static int gnttab_query_foreign_access_v2(grant_ref_t ref)
{
 return grstatus[ref] & (GTF_reading|GTF_writing);
}
