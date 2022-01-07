
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_ldisc_ops {int owner; int refcount; } ;


 int module_put (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_ldiscs_lock ;

__attribute__((used)) static void put_ldops(struct tty_ldisc_ops *ldops)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&tty_ldiscs_lock, flags);
 ldops->refcount--;
 module_put(ldops->owner);
 raw_spin_unlock_irqrestore(&tty_ldiscs_lock, flags);
}
