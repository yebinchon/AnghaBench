
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {int inflight_packets; } ;


 int atomic_read (int *) ;
 scalar_t__ kthread_should_stop () ;

__attribute__((used)) static bool xenvif_dealloc_kthread_should_stop(struct xenvif_queue *queue)
{



 return kthread_should_stop() &&
  !atomic_read(&queue->inflight_packets);
}
