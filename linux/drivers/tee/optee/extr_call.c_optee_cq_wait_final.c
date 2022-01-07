
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optee_call_waiter {int c; int list_node; } ;
struct optee_call_queue {int mutex; } ;


 scalar_t__ completion_done (int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int optee_cq_complete_one (struct optee_call_queue*) ;

__attribute__((used)) static void optee_cq_wait_final(struct optee_call_queue *cq,
    struct optee_call_waiter *w)
{





 mutex_lock(&cq->mutex);


 list_del(&w->list_node);


 optee_cq_complete_one(cq);







 if (completion_done(&w->c))
  optee_cq_complete_one(cq);

 mutex_unlock(&cq->mutex);
}
