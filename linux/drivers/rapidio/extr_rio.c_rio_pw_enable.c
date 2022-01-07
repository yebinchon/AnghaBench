
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rio_mport {int pwe_refcnt; int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* pwenable ) (struct rio_mport*,int) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct rio_mport*,int) ;

void rio_pw_enable(struct rio_mport *mport, int enable)
{
 if (mport->ops->pwenable) {
  mutex_lock(&mport->lock);

  if ((enable && ++mport->pwe_refcnt == 1) ||
      (!enable && mport->pwe_refcnt && --mport->pwe_refcnt == 0))
   mport->ops->pwenable(mport, enable);
  mutex_unlock(&mport->lock);
 }
}
