
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {TYPE_2__* ops; struct sock* sk; } ;
struct sock {int dummy; } ;
struct nvme_tcp_queue {scalar_t__ nr_cqe; struct socket* sock; } ;
struct TYPE_5__ {struct nvme_tcp_queue* data; } ;
struct TYPE_7__ {int count; TYPE_1__ arg; } ;
typedef TYPE_3__ read_descriptor_t ;
struct TYPE_6__ {int (* read_sock ) (struct sock*,TYPE_3__*,int ) ;} ;


 int lock_sock (struct sock*) ;
 int nvme_tcp_recv_skb ;
 int release_sock (struct sock*) ;
 int stub1 (struct sock*,TYPE_3__*,int ) ;

__attribute__((used)) static int nvme_tcp_try_recv(struct nvme_tcp_queue *queue)
{
 struct socket *sock = queue->sock;
 struct sock *sk = sock->sk;
 read_descriptor_t rd_desc;
 int consumed;

 rd_desc.arg.data = queue;
 rd_desc.count = 1;
 lock_sock(sk);
 queue->nr_cqe = 0;
 consumed = sock->ops->read_sock(sk, &rd_desc, nvme_tcp_recv_skb);
 release_sock(sk);
 return consumed;
}
