
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qdio_irq {TYPE_1__** input_qs; } ;
struct TYPE_2__ {int entry; } ;


 int list_add_rcu (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tiq_list ;
 int tiq_list_lock ;

void tiqdio_add_input_queues(struct qdio_irq *irq_ptr)
{
 mutex_lock(&tiq_list_lock);
 list_add_rcu(&irq_ptr->input_qs[0]->entry, &tiq_list);
 mutex_unlock(&tiq_list_lock);
}
