
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_queue {scalar_t__ length; scalar_t__ limit; } ;



__attribute__((used)) static inline int rt2x00queue_full(struct data_queue *queue)
{
 return queue->length == queue->limit;
}
