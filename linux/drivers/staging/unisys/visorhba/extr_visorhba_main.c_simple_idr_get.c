
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;
typedef int spinlock_t ;


 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int INT_MAX ;
 int idr_alloc (struct idr*,void*,int,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int simple_idr_get(struct idr *idrtable, void *p,
       spinlock_t *lock)
{
 int id;
 unsigned long flags;

 idr_preload(GFP_KERNEL);
 spin_lock_irqsave(lock, flags);
 id = idr_alloc(idrtable, p, 1, INT_MAX, GFP_NOWAIT);
 spin_unlock_irqrestore(lock, flags);
 idr_preload_end();

 if (id < 0)
  return 0;

 return (unsigned int)(id);
}
