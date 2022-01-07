
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esas2r_target {scalar_t__ target_state; } ;
struct esas2r_adapter {int mem_lock; struct esas2r_target* targetdb_end; struct esas2r_target* targetdb; } ;


 int TS_NOT_PRESENT ;
 scalar_t__ TS_PRESENT ;
 int esas2r_targ_db_remove (struct esas2r_adapter*,struct esas2r_target*) ;
 int esas2r_targ_get_id (struct esas2r_target*,struct esas2r_adapter*) ;
 int esas2r_target_state_changed (struct esas2r_adapter*,int ,int ) ;
 int esas2r_trace (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void esas2r_targ_db_remove_all(struct esas2r_adapter *a, bool notify)
{
 struct esas2r_target *t;
 unsigned long flags;

 for (t = a->targetdb; t < a->targetdb_end; t++) {
  if (t->target_state != TS_PRESENT)
   continue;

  spin_lock_irqsave(&a->mem_lock, flags);
  esas2r_targ_db_remove(a, t);
  spin_unlock_irqrestore(&a->mem_lock, flags);

  if (notify) {
   esas2r_trace("remove id:%d", esas2r_targ_get_id(t,
         a));
   esas2r_target_state_changed(a, esas2r_targ_get_id(t,
           a),
          TS_NOT_PRESENT);
  }
 }
}
