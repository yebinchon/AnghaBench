
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_q {int entry; } ;
struct qdio_irq {struct qdio_q** input_qs; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int synchronize_rcu () ;
 int tiq_list_lock ;

void tiqdio_remove_input_queues(struct qdio_irq *irq_ptr)
{
 struct qdio_q *q;

 q = irq_ptr->input_qs[0];
 if (!q)
  return;

 mutex_lock(&tiq_list_lock);
 list_del_rcu(&q->entry);
 mutex_unlock(&tiq_list_lock);
 synchronize_rcu();
 INIT_LIST_HEAD(&q->entry);
}
