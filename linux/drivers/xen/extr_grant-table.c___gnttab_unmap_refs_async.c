
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gntab_unmap_queue_data {int count; int age; int (* done ) (int,struct gntab_unmap_queue_data*) ;int * pages; int kunmap_ops; int unmap_ops; int gnttab_work; } ;


 int GNTTAB_UNMAP_REFS_DELAY ;
 int gnttab_unmap_refs (int ,int ,int *,int) ;
 int msecs_to_jiffies (unsigned long) ;
 int page_count (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int stub1 (int,struct gntab_unmap_queue_data*) ;

__attribute__((used)) static void __gnttab_unmap_refs_async(struct gntab_unmap_queue_data* item)
{
 int ret;
 int pc;

 for (pc = 0; pc < item->count; pc++) {
  if (page_count(item->pages[pc]) > 1) {
   unsigned long delay = GNTTAB_UNMAP_REFS_DELAY * (item->age + 1);
   schedule_delayed_work(&item->gnttab_work,
           msecs_to_jiffies(delay));
   return;
  }
 }

 ret = gnttab_unmap_refs(item->unmap_ops, item->kunmap_ops,
    item->pages, item->count);
 item->done(ret, item);
}
