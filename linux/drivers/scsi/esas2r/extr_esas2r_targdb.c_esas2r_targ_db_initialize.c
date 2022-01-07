
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_target {int new_target_state; void* buffered_target_state; void* target_state; } ;
struct esas2r_adapter {struct esas2r_target* targetdb_end; struct esas2r_target* targetdb; } ;


 int TS_INVALID ;
 void* TS_NOT_PRESENT ;
 int memset (struct esas2r_target*,int ,int) ;

void esas2r_targ_db_initialize(struct esas2r_adapter *a)
{
 struct esas2r_target *t;

 for (t = a->targetdb; t < a->targetdb_end; t++) {
  memset(t, 0, sizeof(struct esas2r_target));

  t->target_state = TS_NOT_PRESENT;
  t->buffered_target_state = TS_NOT_PRESENT;
  t->new_target_state = TS_INVALID;
 }
}
