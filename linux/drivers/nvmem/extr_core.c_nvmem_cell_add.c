
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmem_cell {TYPE_1__* nvmem; int node; } ;
struct TYPE_2__ {int cells; } ;


 int NVMEM_CELL_ADD ;
 int blocking_notifier_call_chain (int *,int ,struct nvmem_cell*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvmem_mutex ;
 int nvmem_notifier ;

__attribute__((used)) static void nvmem_cell_add(struct nvmem_cell *cell)
{
 mutex_lock(&nvmem_mutex);
 list_add_tail(&cell->node, &cell->nvmem->cells);
 mutex_unlock(&nvmem_mutex);
 blocking_notifier_call_chain(&nvmem_notifier, NVMEM_CELL_ADD, cell);
}
