
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int total_entries; } ;
struct gasket_page_table {int mutex; int extended_offset_reg; TYPE_1__ config; } ;


 int gasket_page_table_unmap_all_nolock (struct gasket_page_table*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int writeq (int ,int ) ;

void gasket_page_table_reset(struct gasket_page_table *pg_tbl)
{
 mutex_lock(&pg_tbl->mutex);
 gasket_page_table_unmap_all_nolock(pg_tbl);
 writeq(pg_tbl->config.total_entries, pg_tbl->extended_offset_reg);
 mutex_unlock(&pg_tbl->mutex);
}
