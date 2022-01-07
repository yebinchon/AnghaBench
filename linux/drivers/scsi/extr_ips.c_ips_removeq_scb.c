
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* q_next; } ;
typedef TYPE_1__ ips_scb_t ;
struct TYPE_9__ {int count; TYPE_1__* tail; TYPE_1__* head; } ;
typedef TYPE_2__ ips_scb_queue_t ;


 int METHOD_TRACE (char*,int) ;
 TYPE_1__* ips_removeq_scb_head (TYPE_2__*) ;

__attribute__((used)) static ips_scb_t *
ips_removeq_scb(ips_scb_queue_t * queue, ips_scb_t * item)
{
 ips_scb_t *p;

 METHOD_TRACE("ips_removeq_scb", 1);

 if (!item)
  return (((void*)0));

 if (item == queue->head) {
  return (ips_removeq_scb_head(queue));
 }

 p = queue->head;

 while ((p) && (item != p->q_next))
  p = p->q_next;

 if (p) {

  p->q_next = item->q_next;

  if (!item->q_next)
   queue->tail = p;

  item->q_next = ((void*)0);
  queue->count--;

  return (item);
 }

 return (((void*)0));
}
