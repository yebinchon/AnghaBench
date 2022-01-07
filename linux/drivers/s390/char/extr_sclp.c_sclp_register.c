
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_register {int receive_mask; int send_mask; int list; scalar_t__ pm_event_posted; scalar_t__ sclp_send_mask; scalar_t__ sclp_receive_mask; } ;
typedef int sccb_mask_t ;


 int EBUSY ;
 int __sclp_get_mask (int*,int*) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int sclp_init () ;
 int sclp_init_mask (int) ;
 int sclp_lock ;
 int sclp_reg_list ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
sclp_register(struct sclp_register *reg)
{
 unsigned long flags;
 sccb_mask_t receive_mask;
 sccb_mask_t send_mask;
 int rc;

 rc = sclp_init();
 if (rc)
  return rc;
 spin_lock_irqsave(&sclp_lock, flags);

 __sclp_get_mask(&receive_mask, &send_mask);
 if (reg->receive_mask & receive_mask || reg->send_mask & send_mask) {
  spin_unlock_irqrestore(&sclp_lock, flags);
  return -EBUSY;
 }

 reg->sclp_receive_mask = 0;
 reg->sclp_send_mask = 0;
 reg->pm_event_posted = 0;
 list_add(&reg->list, &sclp_reg_list);
 spin_unlock_irqrestore(&sclp_lock, flags);
 rc = sclp_init_mask(1);
 if (rc) {
  spin_lock_irqsave(&sclp_lock, flags);
  list_del(&reg->list);
  spin_unlock_irqrestore(&sclp_lock, flags);
 }
 return rc;
}
