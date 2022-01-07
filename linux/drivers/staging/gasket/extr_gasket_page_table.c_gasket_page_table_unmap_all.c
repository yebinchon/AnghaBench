
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_page_table {int mutex; } ;


 int gasket_page_table_unmap_all_nolock (struct gasket_page_table*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void gasket_page_table_unmap_all(struct gasket_page_table *pg_tbl)
{
 mutex_lock(&pg_tbl->mutex);
 gasket_page_table_unmap_all_nolock(pg_tbl);
 mutex_unlock(&pg_tbl->mutex);
}
