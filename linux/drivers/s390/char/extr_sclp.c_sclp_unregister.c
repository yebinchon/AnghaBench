
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_register {int list; } ;


 int list_del (int *) ;
 int sclp_init_mask (int) ;
 int sclp_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
sclp_unregister(struct sclp_register *reg)
{
 unsigned long flags;

 spin_lock_irqsave(&sclp_lock, flags);
 list_del(&reg->list);
 spin_unlock_irqrestore(&sclp_lock, flags);
 sclp_init_mask(1);
}
