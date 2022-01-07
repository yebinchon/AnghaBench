
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_req {scalar_t__ type; struct raw3215_req* next; } ;


 scalar_t__ RAW3215_FREE ;
 struct raw3215_req* raw3215_freelist ;
 int raw3215_freelist_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void raw3215_free_req(struct raw3215_req *req)
{
 unsigned long flags;

 if (req->type == RAW3215_FREE)
  return;
 req->type = RAW3215_FREE;
 spin_lock_irqsave(&raw3215_freelist_lock, flags);
 req->next = raw3215_freelist;
 raw3215_freelist = req;
 spin_unlock_irqrestore(&raw3215_freelist_lock, flags);
}
