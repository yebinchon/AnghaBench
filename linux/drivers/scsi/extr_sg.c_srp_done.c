
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rq_list_lock; } ;
struct TYPE_5__ {int done; } ;
typedef TYPE_1__ Sg_request ;
typedef TYPE_2__ Sg_fd ;


 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int srp_done(Sg_fd *sfp, Sg_request *srp)
{
 unsigned long flags;
 int ret;

 read_lock_irqsave(&sfp->rq_list_lock, flags);
 ret = srp->done;
 read_unlock_irqrestore(&sfp->rq_list_lock, flags);
 return ret;
}
