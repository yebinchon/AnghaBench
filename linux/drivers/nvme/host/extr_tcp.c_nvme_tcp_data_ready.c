
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_callback_lock; struct nvme_tcp_queue* sk_user_data; } ;
struct nvme_tcp_queue {int io_work; int io_cpu; scalar_t__ rd_enabled; } ;


 scalar_t__ likely (int) ;
 int nvme_tcp_wq ;
 int queue_work_on (int ,int ,int *) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static void nvme_tcp_data_ready(struct sock *sk)
{
 struct nvme_tcp_queue *queue;

 read_lock(&sk->sk_callback_lock);
 queue = sk->sk_user_data;
 if (likely(queue && queue->rd_enabled))
  queue_work_on(queue->io_cpu, nvme_tcp_wq, &queue->io_work);
 read_unlock(&sk->sk_callback_lock);
}
