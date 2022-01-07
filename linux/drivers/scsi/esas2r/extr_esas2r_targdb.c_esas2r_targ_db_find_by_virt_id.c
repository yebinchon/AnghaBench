
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct esas2r_target {scalar_t__ target_state; scalar_t__ virt_targ_id; } ;
struct esas2r_adapter {struct esas2r_target* targetdb_end; struct esas2r_target* targetdb; } ;


 scalar_t__ TS_PRESENT ;

struct esas2r_target *esas2r_targ_db_find_by_virt_id(struct esas2r_adapter *a,
           u16 virt_id)
{
 struct esas2r_target *t;

 for (t = a->targetdb; t < a->targetdb_end; t++) {
  if (t->target_state != TS_PRESENT)
   continue;

  if (t->virt_targ_id == virt_id)
   return t;
 }

 return ((void*)0);
}
