
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_cell_table {int node; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvmem_cell_mutex ;

void nvmem_del_cell_table(struct nvmem_cell_table *table)
{
 mutex_lock(&nvmem_cell_mutex);
 list_del(&table->node);
 mutex_unlock(&nvmem_cell_mutex);
}
