
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmem_cell_lookup {int node; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nvmem_lookup_mutex ;

void nvmem_del_cell_lookups(struct nvmem_cell_lookup *entries, size_t nentries)
{
 int i;

 mutex_lock(&nvmem_lookup_mutex);
 for (i = 0; i < nentries; i++)
  list_del(&entries[i].node);
 mutex_unlock(&nvmem_lookup_mutex);
}
