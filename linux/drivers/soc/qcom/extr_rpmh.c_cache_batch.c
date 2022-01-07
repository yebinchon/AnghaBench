
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmh_ctrlr {int cache_lock; int batch_cache; } ;
struct batch_cache_req {int list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cache_batch(struct rpmh_ctrlr *ctrlr, struct batch_cache_req *req)
{
 unsigned long flags;

 spin_lock_irqsave(&ctrlr->cache_lock, flags);
 list_add_tail(&req->list, &ctrlr->batch_cache);
 spin_unlock_irqrestore(&ctrlr->cache_lock, flags);
}
