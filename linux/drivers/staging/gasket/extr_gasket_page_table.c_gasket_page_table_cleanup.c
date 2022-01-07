
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_page_table {int device; int * entries; } ;


 int gasket_page_table_garbage_collect (struct gasket_page_table*) ;
 int kfree (struct gasket_page_table*) ;
 int put_device (int ) ;
 int vfree (int *) ;

void gasket_page_table_cleanup(struct gasket_page_table *pg_tbl)
{

 gasket_page_table_garbage_collect(pg_tbl);



 vfree(pg_tbl->entries);
 pg_tbl->entries = ((void*)0);

 put_device(pg_tbl->device);
 kfree(pg_tbl);
}
