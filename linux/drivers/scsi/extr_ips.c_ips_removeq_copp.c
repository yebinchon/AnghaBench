
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef TYPE_1__ ips_copp_wait_item_t ;
struct TYPE_9__ {int count; TYPE_1__* tail; TYPE_1__* head; } ;
typedef TYPE_2__ ips_copp_queue_t ;


 int METHOD_TRACE (char*,int) ;
 TYPE_1__* ips_removeq_copp_head (TYPE_2__*) ;

__attribute__((used)) static ips_copp_wait_item_t *
ips_removeq_copp(ips_copp_queue_t * queue, ips_copp_wait_item_t * item)
{
 ips_copp_wait_item_t *p;

 METHOD_TRACE("ips_removeq_copp", 1);

 if (!item)
  return (((void*)0));

 if (item == queue->head) {
  return (ips_removeq_copp_head(queue));
 }

 p = queue->head;

 while ((p) && (item != p->next))
  p = p->next;

 if (p) {

  p->next = item->next;

  if (!item->next)
   queue->tail = p;

  item->next = ((void*)0);
  queue->count--;

  return (item);
 }

 return (((void*)0));
}
