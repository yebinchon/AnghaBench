
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wq_entry {int link; int c; } ;
struct optee_wait_queue {int mu; } ;


 int kfree (struct wq_entry*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion (int *) ;
 struct wq_entry* wq_entry_get (struct optee_wait_queue*,int ) ;

__attribute__((used)) static void wq_sleep(struct optee_wait_queue *wq, u32 key)
{
 struct wq_entry *w = wq_entry_get(wq, key);

 if (w) {
  wait_for_completion(&w->c);
  mutex_lock(&wq->mu);
  list_del(&w->link);
  mutex_unlock(&wq->mu);
  kfree(w);
 }
}
