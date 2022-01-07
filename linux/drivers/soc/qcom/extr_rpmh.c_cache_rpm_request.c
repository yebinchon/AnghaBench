
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcs_cmd {int data; int addr; } ;
struct rpmh_ctrlr {int dirty; int cache_lock; int cache; } ;
struct cache_req {int sleep_val; int wake_val; int list; int addr; } ;
typedef enum rpmh_state { ____Placeholder_rpmh_state } rpmh_state ;


 int ENOMEM ;
 struct cache_req* ERR_PTR (int ) ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;



 int UINT_MAX ;
 struct cache_req* __find_req (struct rpmh_ctrlr*,int ) ;
 struct cache_req* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct cache_req *cache_rpm_request(struct rpmh_ctrlr *ctrlr,
        enum rpmh_state state,
        struct tcs_cmd *cmd)
{
 struct cache_req *req;
 unsigned long flags;

 spin_lock_irqsave(&ctrlr->cache_lock, flags);
 req = __find_req(ctrlr, cmd->addr);
 if (req)
  goto existing;

 req = kzalloc(sizeof(*req), GFP_ATOMIC);
 if (!req) {
  req = ERR_PTR(-ENOMEM);
  goto unlock;
 }

 req->addr = cmd->addr;
 req->sleep_val = req->wake_val = UINT_MAX;
 INIT_LIST_HEAD(&req->list);
 list_add_tail(&req->list, &ctrlr->cache);

existing:
 switch (state) {
 case 130:
  if (req->sleep_val != UINT_MAX)
   req->wake_val = cmd->data;
  break;
 case 128:
  req->wake_val = cmd->data;
  break;
 case 129:
  req->sleep_val = cmd->data;
  break;
 default:
  break;
 }

 ctrlr->dirty = 1;
unlock:
 spin_unlock_irqrestore(&ctrlr->cache_lock, flags);

 return req;
}
