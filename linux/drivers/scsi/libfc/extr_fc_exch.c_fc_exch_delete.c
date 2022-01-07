
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u16 ;
struct fc_exch_pool {scalar_t__ total_exches; int lock; void* next_index; void* right; void* left; } ;
struct fc_exch {int xid; int state; int ex_list; TYPE_1__* em; struct fc_exch_pool* pool; } ;
struct TYPE_2__ {int min_xid; } ;


 int FC_EX_QUARANTINE ;
 void* FC_XID_UNKNOWN ;
 int WARN_ON (int) ;
 int fc_cpu_order ;
 int fc_exch_ptr_set (struct fc_exch_pool*,void*,int *) ;
 int fc_exch_release (struct fc_exch*) ;
 int fc_quarantine_exch ;
 int list_del (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void fc_exch_delete(struct fc_exch *ep)
{
 struct fc_exch_pool *pool;
 u16 index;

 pool = ep->pool;
 spin_lock_bh(&pool->lock);
 WARN_ON(pool->total_exches <= 0);
 pool->total_exches--;


 index = (ep->xid - ep->em->min_xid) >> fc_cpu_order;
 if (!(ep->state & FC_EX_QUARANTINE)) {
  if (pool->left == FC_XID_UNKNOWN)
   pool->left = index;
  else if (pool->right == FC_XID_UNKNOWN)
   pool->right = index;
  else
   pool->next_index = index;
  fc_exch_ptr_set(pool, index, ((void*)0));
 } else {
  fc_exch_ptr_set(pool, index, &fc_quarantine_exch);
 }
 list_del(&ep->ex_list);
 spin_unlock_bh(&pool->lock);
 fc_exch_release(ep);
}
