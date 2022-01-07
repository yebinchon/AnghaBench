
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gntab_unmap_queue_data {scalar_t__ age; int gnttab_work; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int __gnttab_unmap_refs_async (struct gntab_unmap_queue_data*) ;
 int gnttab_unmap_work ;

void gnttab_unmap_refs_async(struct gntab_unmap_queue_data* item)
{
 INIT_DELAYED_WORK(&item->gnttab_work, gnttab_unmap_work);
 item->age = 0;

 __gnttab_unmap_refs_async(item);
}
