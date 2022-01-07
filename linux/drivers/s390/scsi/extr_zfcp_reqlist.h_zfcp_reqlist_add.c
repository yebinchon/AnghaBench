
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_reqlist {int lock; int * buckets; } ;
struct zfcp_fsf_req {int list; int req_id; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int zfcp_reqlist_hash (int ) ;

__attribute__((used)) static inline void zfcp_reqlist_add(struct zfcp_reqlist *rl,
        struct zfcp_fsf_req *req)
{
 unsigned int i;
 unsigned long flags;

 i = zfcp_reqlist_hash(req->req_id);

 spin_lock_irqsave(&rl->lock, flags);
 list_add_tail(&req->list, &rl->buckets[i]);
 spin_unlock_irqrestore(&rl->lock, flags);
}
