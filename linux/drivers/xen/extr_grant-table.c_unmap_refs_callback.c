
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unmap_refs_callback_data {int result; int completion; } ;
struct gntab_unmap_queue_data {struct unmap_refs_callback_data* data; } ;


 int complete (int *) ;

__attribute__((used)) static void unmap_refs_callback(int result,
  struct gntab_unmap_queue_data *data)
{
 struct unmap_refs_callback_data *d = data->data;

 d->result = result;
 complete(&d->completion);
}
