
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {int lock; scalar_t__ connected; } ;


 int do_shutdown (struct cardstate*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void do_stop(struct cardstate *cs)
{
 unsigned long flags;

 spin_lock_irqsave(&cs->lock, flags);
 cs->connected = 0;
 spin_unlock_irqrestore(&cs->lock, flags);

 do_shutdown(cs);
}
