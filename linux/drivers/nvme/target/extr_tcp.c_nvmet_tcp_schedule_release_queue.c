
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_tcp_queue {scalar_t__ state; int state_lock; int release_work; } ;


 scalar_t__ NVMET_TCP_Q_DISCONNECTING ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nvmet_tcp_schedule_release_queue(struct nvmet_tcp_queue *queue)
{
 spin_lock(&queue->state_lock);
 if (queue->state != NVMET_TCP_Q_DISCONNECTING) {
  queue->state = NVMET_TCP_Q_DISCONNECTING;
  schedule_work(&queue->release_work);
 }
 spin_unlock(&queue->state_lock);
}
