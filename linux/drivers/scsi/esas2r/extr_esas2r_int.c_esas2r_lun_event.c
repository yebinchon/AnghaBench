
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dwevent; int bystate; } ;
union atto_vda_ae {TYPE_1__ lu; } ;
typedef int u32 ;
typedef int u16 ;
struct esas2r_target {scalar_t__ new_target_state; int lu_event; } ;
struct esas2r_adapter {int mem_lock; struct esas2r_target* targetdb; } ;


 int DCDE_DEV_CHANGE ;
 scalar_t__ TS_INVALID ;
 void* TS_NOT_PRESENT ;
 scalar_t__ TS_PRESENT ;



 int VDAAE_LU_LOST ;



 int esas2r_disc_queue_event (struct esas2r_adapter*,int ) ;
 int esas2r_trace (char*,int) ;
 int memcpy (int *,TYPE_1__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void esas2r_lun_event(struct esas2r_adapter *a, union atto_vda_ae *ae,
        u16 target, u32 length)
{
 struct esas2r_target *t = a->targetdb + target;
 u32 cplen = length;
 unsigned long flags;

 if (cplen > sizeof(t->lu_event))
  cplen = sizeof(t->lu_event);

 esas2r_trace("ae->lu.dwevent: %x", ae->lu.dwevent);
 esas2r_trace("ae->lu.bystate: %x", ae->lu.bystate);

 spin_lock_irqsave(&a->mem_lock, flags);

 t->new_target_state = TS_INVALID;

 if (ae->lu.dwevent & VDAAE_LU_LOST) {
  t->new_target_state = TS_NOT_PRESENT;
 } else {
  switch (ae->lu.bystate) {
  case 130:
  case 129:
  case 132:
  case 131:
   t->new_target_state = TS_NOT_PRESENT;
   break;

  case 128:
  case 133:
   t->new_target_state = TS_PRESENT;
   break;
  }
 }

 if (t->new_target_state != TS_INVALID) {
  memcpy(&t->lu_event, &ae->lu, cplen);

  esas2r_disc_queue_event(a, DCDE_DEV_CHANGE);
 }

 spin_unlock_irqrestore(&a->mem_lock, flags);
}
