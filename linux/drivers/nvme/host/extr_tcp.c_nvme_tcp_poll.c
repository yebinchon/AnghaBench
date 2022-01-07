
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_receive_queue; } ;
struct nvme_tcp_queue {int nr_cqe; TYPE_1__* sock; } ;
struct blk_mq_hw_ctx {struct nvme_tcp_queue* driver_data; } ;
struct TYPE_2__ {struct sock* sk; } ;


 int nvme_tcp_try_recv (struct nvme_tcp_queue*) ;
 int sk_busy_loop (struct sock*,int) ;
 scalar_t__ sk_can_busy_loop (struct sock*) ;
 scalar_t__ skb_queue_empty_lockless (int *) ;

__attribute__((used)) static int nvme_tcp_poll(struct blk_mq_hw_ctx *hctx)
{
 struct nvme_tcp_queue *queue = hctx->driver_data;
 struct sock *sk = queue->sock->sk;

 if (sk_can_busy_loop(sk) && skb_queue_empty_lockless(&sk->sk_receive_queue))
  sk_busy_loop(sk, 1);
 nvme_tcp_try_recv(queue);
 return queue->nr_cqe;
}
