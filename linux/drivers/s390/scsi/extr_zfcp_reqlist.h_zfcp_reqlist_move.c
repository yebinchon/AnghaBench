
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_reqlist {int lock; int * buckets; } ;
struct list_head {int dummy; } ;


 unsigned int ZFCP_REQ_LIST_BUCKETS ;
 int list_splice_init (int *,struct list_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void zfcp_reqlist_move(struct zfcp_reqlist *rl,
         struct list_head *list)
{
 unsigned int i;
 unsigned long flags;

 spin_lock_irqsave(&rl->lock, flags);
 for (i = 0; i < ZFCP_REQ_LIST_BUCKETS; i++)
  list_splice_init(&rl->buckets[i], list);
 spin_unlock_irqrestore(&rl->lock, flags);
}
