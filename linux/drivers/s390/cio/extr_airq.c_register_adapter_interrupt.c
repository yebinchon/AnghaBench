
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airq_struct {size_t isc; int lsi_mask; int list; int flags; scalar_t__ lsi_ptr; int handler; } ;
typedef int dbf_txt ;


 int AIRQ_PTR_ALLOCATED ;
 int CIO_TRACE_EVENT (int,char*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t MAX_ISC ;
 int * airq_lists ;
 int airq_lists_lock ;
 int hlist_add_head_rcu (int *,int *) ;
 int isc_register (size_t) ;
 scalar_t__ kzalloc (int,int ) ;
 int snprintf (char*,int,char*,struct airq_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int register_adapter_interrupt(struct airq_struct *airq)
{
 char dbf_txt[32];

 if (!airq->handler || airq->isc > MAX_ISC)
  return -EINVAL;
 if (!airq->lsi_ptr) {
  airq->lsi_ptr = kzalloc(1, GFP_KERNEL);
  if (!airq->lsi_ptr)
   return -ENOMEM;
  airq->flags |= AIRQ_PTR_ALLOCATED;
 }
 if (!airq->lsi_mask)
  airq->lsi_mask = 0xff;
 snprintf(dbf_txt, sizeof(dbf_txt), "rairq:%p", airq);
 CIO_TRACE_EVENT(4, dbf_txt);
 isc_register(airq->isc);
 spin_lock(&airq_lists_lock);
 hlist_add_head_rcu(&airq->list, &airq_lists[airq->isc]);
 spin_unlock(&airq_lists_lock);
 return 0;
}
