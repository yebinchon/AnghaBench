
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvsi_struct {int lock; } ;


 int __set_state (struct hvsi_struct*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void set_state(struct hvsi_struct *hp, int state)
{
 unsigned long flags;

 spin_lock_irqsave(&hp->lock, flags);
 __set_state(hp, state);
 spin_unlock_irqrestore(&hp->lock, flags);
}
