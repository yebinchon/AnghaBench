
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_ldisc_ops {int num; scalar_t__ refcount; } ;


 int EINVAL ;
 int NR_LDISCS ;
 int N_TTY ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 struct tty_ldisc_ops** tty_ldiscs ;
 int tty_ldiscs_lock ;

int tty_register_ldisc(int disc, struct tty_ldisc_ops *new_ldisc)
{
 unsigned long flags;
 int ret = 0;

 if (disc < N_TTY || disc >= NR_LDISCS)
  return -EINVAL;

 raw_spin_lock_irqsave(&tty_ldiscs_lock, flags);
 tty_ldiscs[disc] = new_ldisc;
 new_ldisc->num = disc;
 new_ldisc->refcount = 0;
 raw_spin_unlock_irqrestore(&tty_ldiscs_lock, flags);

 return ret;
}
