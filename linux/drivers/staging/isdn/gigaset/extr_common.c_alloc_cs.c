
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gigaset_driver {unsigned int minors; int lock; struct cardstate* cs; scalar_t__ blocked; } ;
struct cardstate {int flags; } ;


 int VALID_MINOR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct cardstate *alloc_cs(struct gigaset_driver *drv)
{
 unsigned long flags;
 unsigned i;
 struct cardstate *cs;
 struct cardstate *ret = ((void*)0);

 spin_lock_irqsave(&drv->lock, flags);
 if (drv->blocked)
  goto exit;
 for (i = 0; i < drv->minors; ++i) {
  cs = drv->cs + i;
  if (!(cs->flags & VALID_MINOR)) {
   cs->flags = VALID_MINOR;
   ret = cs;
   break;
  }
 }
exit:
 spin_unlock_irqrestore(&drv->lock, flags);
 return ret;
}
