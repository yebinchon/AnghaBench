
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unmap_refs_callback_data {int result; int completion; } ;
struct gntab_unmap_queue_data {int * done; struct unmap_refs_callback_data* data; } ;


 int gnttab_unmap_refs_async (struct gntab_unmap_queue_data*) ;
 int init_completion (int *) ;
 int unmap_refs_callback ;
 int wait_for_completion (int *) ;

int gnttab_unmap_refs_sync(struct gntab_unmap_queue_data *item)
{
 struct unmap_refs_callback_data data;

 init_completion(&data.completion);
 item->data = &data;
 item->done = &unmap_refs_callback;
 gnttab_unmap_refs_async(item);
 wait_for_completion(&data.completion);

 return data.result;
}
