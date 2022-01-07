
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_callback_lock; struct nvmet_tcp_queue* sk_user_data; } ;
struct nvmet_tcp_queue {int io_work; int cpu; } ;


 scalar_t__ likely (struct nvmet_tcp_queue*) ;
 int nvmet_tcp_wq ;
 int queue_work_on (int ,int ,int *) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static void nvmet_tcp_data_ready(struct sock *sk)
{
 struct nvmet_tcp_queue *queue;

 read_lock_bh(&sk->sk_callback_lock);
 queue = sk->sk_user_data;
 if (likely(queue))
  queue_work_on(queue->cpu, nvmet_tcp_wq, &queue->io_work);
 read_unlock_bh(&sk->sk_callback_lock);
}
