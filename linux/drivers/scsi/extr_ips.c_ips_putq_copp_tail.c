
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ ips_copp_wait_item_t ;
struct TYPE_6__ {int count; TYPE_1__* head; TYPE_1__* tail; } ;
typedef TYPE_2__ ips_copp_queue_t ;


 int METHOD_TRACE (char*,int) ;

__attribute__((used)) static void
ips_putq_copp_tail(ips_copp_queue_t * queue, ips_copp_wait_item_t * item)
{
 METHOD_TRACE("ips_putq_copp_tail", 1);

 if (!item)
  return;

 item->next = ((void*)0);

 if (queue->tail)
  queue->tail->next = item;

 queue->tail = item;

 if (!queue->head)
  queue->head = item;

 queue->count++;
}
