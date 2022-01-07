
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint ;
struct TYPE_4__ {void* total_entries; } ;
struct gasket_page_table {int mutex; int extended_offset_reg; TYPE_2__ config; void* num_extended_entries; void* num_simple_entries; int device; TYPE_1__* entries; } ;
struct TYPE_3__ {scalar_t__ status; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ PTE_FREE ;
 int dev_err (int ,char*,int) ;
 int gasket_page_table_garbage_collect_nolock (struct gasket_page_table*) ;
 int min (void*,void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int writeq (void*,int ) ;

int gasket_page_table_partition(struct gasket_page_table *pg_tbl,
    uint num_simple_entries)
{
 int i, start;

 mutex_lock(&pg_tbl->mutex);
 if (num_simple_entries > pg_tbl->config.total_entries) {
  mutex_unlock(&pg_tbl->mutex);
  return -EINVAL;
 }

 gasket_page_table_garbage_collect_nolock(pg_tbl);

 start = min(pg_tbl->num_simple_entries, num_simple_entries);

 for (i = start; i < pg_tbl->config.total_entries; i++) {
  if (pg_tbl->entries[i].status != PTE_FREE) {
   dev_err(pg_tbl->device, "entry %d is not free\n", i);
   mutex_unlock(&pg_tbl->mutex);
   return -EBUSY;
  }
 }

 pg_tbl->num_simple_entries = num_simple_entries;
 pg_tbl->num_extended_entries =
  pg_tbl->config.total_entries - num_simple_entries;
 writeq(num_simple_entries, pg_tbl->extended_offset_reg);

 mutex_unlock(&pg_tbl->mutex);
 return 0;
}
