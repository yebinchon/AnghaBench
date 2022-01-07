
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_work {int dummy; } ;
struct sas_ha_struct {int lock; } ;


 int sas_queue_work (struct sas_ha_struct*,struct sas_work*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sas_queue_event(int event, struct sas_work *work,
       struct sas_ha_struct *ha)
{
 unsigned long flags;
 int rc;

 spin_lock_irqsave(&ha->lock, flags);
 rc = sas_queue_work(ha, work);
 spin_unlock_irqrestore(&ha->lock, flags);

 return rc;
}
