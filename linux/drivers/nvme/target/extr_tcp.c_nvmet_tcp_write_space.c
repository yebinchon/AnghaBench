
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_callback_lock; TYPE_1__* sk_socket; struct nvmet_tcp_queue* sk_user_data; } ;
struct nvmet_tcp_queue {scalar_t__ state; int io_work; int cpu; int (* write_space ) (struct sock*) ;} ;
struct TYPE_2__ {int flags; } ;


 scalar_t__ NVMET_TCP_Q_CONNECTING ;
 int SOCK_NOSPACE ;
 int clear_bit (int ,int *) ;
 int nvmet_tcp_wq ;
 int queue_work_on (int ,int ,int *) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 scalar_t__ sk_stream_is_writeable (struct sock*) ;
 int stub1 (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void nvmet_tcp_write_space(struct sock *sk)
{
 struct nvmet_tcp_queue *queue;

 read_lock_bh(&sk->sk_callback_lock);
 queue = sk->sk_user_data;
 if (unlikely(!queue))
  goto out;

 if (unlikely(queue->state == NVMET_TCP_Q_CONNECTING)) {
  queue->write_space(sk);
  goto out;
 }

 if (sk_stream_is_writeable(sk)) {
  clear_bit(SOCK_NOSPACE, &sk->sk_socket->flags);
  queue_work_on(queue->cpu, nvmet_tcp_wq, &queue->io_work);
 }
out:
 read_unlock_bh(&sk->sk_callback_lock);
}
