
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int uint ;
struct gasket_page_table {int mutex; } ;


 int gasket_page_table_unmap_nolock (struct gasket_page_table*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void gasket_page_table_unmap(struct gasket_page_table *pg_tbl, ulong dev_addr,
        uint num_pages)
{
 if (!num_pages)
  return;

 mutex_lock(&pg_tbl->mutex);
 gasket_page_table_unmap_nolock(pg_tbl, dev_addr, num_pages);
 mutex_unlock(&pg_tbl->mutex);
}
