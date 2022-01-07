
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_reqlist {int lock; } ;
struct zfcp_fsf_req {int list; } ;


 struct zfcp_fsf_req* _zfcp_reqlist_find (struct zfcp_reqlist*,unsigned long) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline struct zfcp_fsf_req *
zfcp_reqlist_find_rm(struct zfcp_reqlist *rl, unsigned long req_id)
{
 unsigned long flags;
 struct zfcp_fsf_req *req;

 spin_lock_irqsave(&rl->lock, flags);
 req = _zfcp_reqlist_find(rl, req_id);
 if (req)
  list_del(&req->list);
 spin_unlock_irqrestore(&rl->lock, flags);

 return req;
}
