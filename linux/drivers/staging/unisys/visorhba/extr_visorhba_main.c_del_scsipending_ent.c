
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct visorhba_devdata {int privlock; TYPE_1__* pending; } ;
struct TYPE_2__ {int * sent; scalar_t__ cmdtype; } ;


 int MAX_PENDING_REQUESTS ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void *del_scsipending_ent(struct visorhba_devdata *devdata, int del)
{
 unsigned long flags;
 void *sent;

 if (del >= MAX_PENDING_REQUESTS)
  return ((void*)0);

 spin_lock_irqsave(&devdata->privlock, flags);
 sent = devdata->pending[del].sent;
 devdata->pending[del].cmdtype = 0;
 devdata->pending[del].sent = ((void*)0);
 spin_unlock_irqrestore(&devdata->privlock, flags);

 return sent;
}
