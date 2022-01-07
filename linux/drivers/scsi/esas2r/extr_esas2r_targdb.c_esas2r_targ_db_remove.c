
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_target {int target_state; } ;
struct esas2r_adapter {int dummy; } ;


 int TS_NOT_PRESENT ;
 int esas2r_targ_get_id (struct esas2r_target*,struct esas2r_adapter*) ;
 int esas2r_trace (char*,int ) ;
 int esas2r_trace_enter () ;
 int esas2r_trace_exit () ;

void esas2r_targ_db_remove(struct esas2r_adapter *a, struct esas2r_target *t)
{
 esas2r_trace_enter();

 t->target_state = TS_NOT_PRESENT;

 esas2r_trace("remove id:%d", esas2r_targ_get_id(t, a));

 esas2r_trace_exit();
}
