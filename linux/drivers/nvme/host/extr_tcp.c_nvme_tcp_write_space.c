
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_callback_lock; TYPE_1__* sk_socket; struct nvme_tcp_queue* sk_user_data; } ;
struct nvme_tcp_queue {int io_work; int io_cpu; } ;
struct TYPE_2__ {int flags; } ;


 int SOCK_NOSPACE ;
 int clear_bit (int ,int *) ;
 scalar_t__ likely (int) ;
 int nvme_tcp_wq ;
 int queue_work_on (int ,int ,int *) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 scalar_t__ sk_stream_is_writeable (struct sock*) ;

__attribute__((used)) static void nvme_tcp_write_space(struct sock *sk)
{
 struct nvme_tcp_queue *queue;

 read_lock_bh(&sk->sk_callback_lock);
 queue = sk->sk_user_data;
 if (likely(queue && sk_stream_is_writeable(sk))) {
  clear_bit(SOCK_NOSPACE, &sk->sk_socket->flags);
  queue_work_on(queue->io_cpu, nvme_tcp_wq, &queue->io_work);
 }
 read_unlock_bh(&sk->sk_callback_lock);
}
