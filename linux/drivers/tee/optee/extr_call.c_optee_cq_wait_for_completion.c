
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optee_call_waiter {int list_node; int c; } ;
struct optee_call_queue {int mutex; int waiters; } ;


 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reinit_completion (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void optee_cq_wait_for_completion(struct optee_call_queue *cq,
      struct optee_call_waiter *w)
{
 wait_for_completion(&w->c);

 mutex_lock(&cq->mutex);


 list_del(&w->list_node);
 reinit_completion(&w->c);
 list_add_tail(&w->list_node, &cq->waiters);

 mutex_unlock(&cq->mutex);
}
