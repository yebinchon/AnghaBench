
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_cell_table {int node; } ;


 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvmem_cell_mutex ;
 int nvmem_cell_tables ;

void nvmem_add_cell_table(struct nvmem_cell_table *table)
{
 mutex_lock(&nvmem_cell_mutex);
 list_add_tail(&table->node, &nvmem_cell_tables);
 mutex_unlock(&nvmem_cell_mutex);
}
