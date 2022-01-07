
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ entry_count; } ;


 TYPE_1__** lpfc_hbq_defs ;
 int lpfc_sli_hbq_count () ;

__attribute__((used)) static int
lpfc_sli_hbq_entry_count(void)
{
 int hbq_count = lpfc_sli_hbq_count();
 int count = 0;
 int i;

 for (i = 0; i < hbq_count; ++i)
  count += lpfc_hbq_defs[i]->entry_count;
 return count;
}
