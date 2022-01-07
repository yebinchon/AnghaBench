
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ refcount; } ;


 int EBUSY ;
 int EINVAL ;
 int NR_LDISCS ;
 int N_TTY ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__** tty_ldiscs ;
 int tty_ldiscs_lock ;

int tty_unregister_ldisc(int disc)
{
 unsigned long flags;
 int ret = 0;

 if (disc < N_TTY || disc >= NR_LDISCS)
  return -EINVAL;

 raw_spin_lock_irqsave(&tty_ldiscs_lock, flags);
 if (tty_ldiscs[disc]->refcount)
  ret = -EBUSY;
 else
  tty_ldiscs[disc] = ((void*)0);
 raw_spin_unlock_irqrestore(&tty_ldiscs_lock, flags);

 return ret;
}
