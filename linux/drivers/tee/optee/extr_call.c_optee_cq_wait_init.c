
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optee_call_waiter {int list_node; int c; } ;
struct optee_call_queue {int mutex; int waiters; } ;


 int init_completion (int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void optee_cq_wait_init(struct optee_call_queue *cq,
          struct optee_call_waiter *w)
{
 mutex_lock(&cq->mutex);







 init_completion(&w->c);
 list_add_tail(&w->list_node, &cq->waiters);

 mutex_unlock(&cq->mutex);
}
