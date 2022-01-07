
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airq_struct {int flags; int * lsi_ptr; int isc; int list; } ;
typedef int dbf_txt ;


 int AIRQ_PTR_ALLOCATED ;
 int CIO_TRACE_EVENT (int,char*) ;
 int airq_lists_lock ;
 int hlist_del_rcu (int *) ;
 scalar_t__ hlist_unhashed (int *) ;
 int isc_unregister (int ) ;
 int kfree (int *) ;
 int snprintf (char*,int,char*,struct airq_struct*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_rcu () ;

void unregister_adapter_interrupt(struct airq_struct *airq)
{
 char dbf_txt[32];

 if (hlist_unhashed(&airq->list))
  return;
 snprintf(dbf_txt, sizeof(dbf_txt), "urairq:%p", airq);
 CIO_TRACE_EVENT(4, dbf_txt);
 spin_lock(&airq_lists_lock);
 hlist_del_rcu(&airq->list);
 spin_unlock(&airq_lists_lock);
 synchronize_rcu();
 isc_unregister(airq->isc);
 if (airq->flags & AIRQ_PTR_ALLOCATED) {
  kfree(airq->lsi_ptr);
  airq->lsi_ptr = ((void*)0);
  airq->flags &= ~AIRQ_PTR_ALLOCATED;
 }
}
