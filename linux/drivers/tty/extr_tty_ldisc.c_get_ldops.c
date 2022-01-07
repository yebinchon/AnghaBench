
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_ldisc_ops {int refcount; int owner; } ;


 int EAGAIN ;
 int EINVAL ;
 struct tty_ldisc_ops* ERR_PTR (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ try_module_get (int ) ;
 struct tty_ldisc_ops** tty_ldiscs ;
 int tty_ldiscs_lock ;

__attribute__((used)) static struct tty_ldisc_ops *get_ldops(int disc)
{
 unsigned long flags;
 struct tty_ldisc_ops *ldops, *ret;

 raw_spin_lock_irqsave(&tty_ldiscs_lock, flags);
 ret = ERR_PTR(-EINVAL);
 ldops = tty_ldiscs[disc];
 if (ldops) {
  ret = ERR_PTR(-EAGAIN);
  if (try_module_get(ldops->owner)) {
   ldops->refcount++;
   ret = ldops;
  }
 }
 raw_spin_unlock_irqrestore(&tty_ldiscs_lock, flags);
 return ret;
}
