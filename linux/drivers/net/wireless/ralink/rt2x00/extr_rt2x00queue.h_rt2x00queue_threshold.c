
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_queue {scalar_t__ threshold; } ;


 scalar_t__ rt2x00queue_available (struct data_queue*) ;

__attribute__((used)) static inline int rt2x00queue_threshold(struct data_queue *queue)
{
 return rt2x00queue_available(queue) < queue->threshold;
}
