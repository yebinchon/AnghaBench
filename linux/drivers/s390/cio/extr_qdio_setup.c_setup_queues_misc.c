
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slib {int mask; int nr; int entry; int * handler; struct qdio_irq* irq_ptr; struct slib* slib; } ;
struct qdio_q {int mask; int nr; int entry; int * handler; struct qdio_irq* irq_ptr; struct qdio_q* slib; } ;
struct qdio_irq {int dummy; } ;
typedef int qdio_handler_t ;


 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 int memset (struct slib*,int ,int) ;

__attribute__((used)) static void setup_queues_misc(struct qdio_q *q, struct qdio_irq *irq_ptr,
         qdio_handler_t *handler, int i)
{
 struct slib *slib = q->slib;


 memset(q, 0, sizeof(*q));
 memset(slib, 0, PAGE_SIZE);
 q->slib = slib;
 q->irq_ptr = irq_ptr;
 q->mask = 1 << (31 - i);
 q->nr = i;
 q->handler = handler;
 INIT_LIST_HEAD(&q->entry);
}
