
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int can_queue; int pend_q_lock; } ;
struct asd_ha_struct {TYPE_1__ seq; } ;


 int SAS_QUEUE_FULL ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int asd_can_queue(struct asd_ha_struct *asd_ha, int num)
{
 int res = 0;
 unsigned long flags;

 spin_lock_irqsave(&asd_ha->seq.pend_q_lock, flags);
 if ((asd_ha->seq.can_queue - num) < 0)
  res = -SAS_QUEUE_FULL;
 else
  asd_ha->seq.can_queue -= num;
 spin_unlock_irqrestore(&asd_ha->seq.pend_q_lock, flags);

 return res;
}
