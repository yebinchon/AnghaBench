
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct cw1200_queue_item {int head; } ;


 int BUG_ON (int) ;
 int GFP_ATOMIC ;
 struct cw1200_queue_item* kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int memcpy (struct cw1200_queue_item*,struct cw1200_queue_item*,int) ;

__attribute__((used)) static void cw1200_queue_register_post_gc(struct list_head *gc_list,
       struct cw1200_queue_item *item)
{
 struct cw1200_queue_item *gc_item;
 gc_item = kmalloc(sizeof(struct cw1200_queue_item),
   GFP_ATOMIC);
 BUG_ON(!gc_item);
 memcpy(gc_item, item, sizeof(struct cw1200_queue_item));
 list_add_tail(&gc_item->head, gc_list);
}
