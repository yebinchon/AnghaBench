
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_cell {struct nvmem_cell* name; int np; int node; } ;


 int NVMEM_CELL_REMOVE ;
 int blocking_notifier_call_chain (int *,int ,struct nvmem_cell*) ;
 int kfree (struct nvmem_cell*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvmem_mutex ;
 int nvmem_notifier ;
 int of_node_put (int ) ;

__attribute__((used)) static void nvmem_cell_drop(struct nvmem_cell *cell)
{
 blocking_notifier_call_chain(&nvmem_notifier, NVMEM_CELL_REMOVE, cell);
 mutex_lock(&nvmem_mutex);
 list_del(&cell->node);
 mutex_unlock(&nvmem_mutex);
 of_node_put(cell->np);
 kfree(cell->name);
 kfree(cell);
}
