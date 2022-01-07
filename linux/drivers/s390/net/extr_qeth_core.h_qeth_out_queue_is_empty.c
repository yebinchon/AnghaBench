
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_qdio_out_q {int used_buffers; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static inline bool qeth_out_queue_is_empty(struct qeth_qdio_out_q *queue)
{
 return atomic_read(&queue->used_buffers) == 0;
}
