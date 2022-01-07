
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ GRANT_INVALID_REF ;
 int gnttab_end_foreign_access (scalar_t__,int ,unsigned long) ;

__attribute__((used)) static void dmabuf_imp_end_foreign_access(u32 *refs, int count)
{
 int i;

 for (i = 0; i < count; i++)
  if (refs[i] != GRANT_INVALID_REF)
   gnttab_end_foreign_access(refs[i], 0, 0UL);
}
