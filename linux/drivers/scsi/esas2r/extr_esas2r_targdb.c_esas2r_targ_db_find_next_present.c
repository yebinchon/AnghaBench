
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct esas2r_target {scalar_t__ target_state; } ;
struct esas2r_adapter {struct esas2r_target* targetdb; } ;


 scalar_t__ ESAS2R_MAX_TARGETS ;
 scalar_t__ TS_PRESENT ;

u16 esas2r_targ_db_find_next_present(struct esas2r_adapter *a, u16 target_id)
{
 u16 id = target_id + 1;

 while (id < ESAS2R_MAX_TARGETS) {
  struct esas2r_target *t = a->targetdb + id;

  if (t->target_state == TS_PRESENT)
   break;

  id++;
 }

 return id;
}
