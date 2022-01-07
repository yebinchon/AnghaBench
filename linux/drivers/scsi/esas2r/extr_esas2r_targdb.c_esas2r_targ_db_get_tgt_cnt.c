
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct esas2r_target {scalar_t__ target_state; } ;
struct esas2r_adapter {int mem_lock; struct esas2r_target* targetdb_end; struct esas2r_target* targetdb; } ;


 scalar_t__ TS_PRESENT ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u16 esas2r_targ_db_get_tgt_cnt(struct esas2r_adapter *a)
{
 u16 devcnt = 0;
 struct esas2r_target *t;
 unsigned long flags;

 spin_lock_irqsave(&a->mem_lock, flags);
 for (t = a->targetdb; t < a->targetdb_end; t++)
  if (t->target_state == TS_PRESENT)
   devcnt++;

 spin_unlock_irqrestore(&a->mem_lock, flags);

 return devcnt;
}
