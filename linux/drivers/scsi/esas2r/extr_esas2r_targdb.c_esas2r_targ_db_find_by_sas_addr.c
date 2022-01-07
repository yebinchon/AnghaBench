
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct esas2r_target {scalar_t__ sas_addr; } ;
struct esas2r_adapter {struct esas2r_target* targetdb_end; struct esas2r_target* targetdb; } ;



struct esas2r_target *esas2r_targ_db_find_by_sas_addr(struct esas2r_adapter *a,
            u64 *sas_addr)
{
 struct esas2r_target *t;

 for (t = a->targetdb; t < a->targetdb_end; t++)
  if (t->sas_addr == *sas_addr)
   return t;

 return ((void*)0);
}
