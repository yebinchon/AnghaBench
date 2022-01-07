
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {TYPE_2__* sk; TYPE_1__* ops; } ;
struct TYPE_4__ {int sk_receive_queue; } ;
struct TYPE_3__ {int (* peek_len ) (struct socket*) ;} ;


 int skb_queue_empty (int *) ;
 int stub1 (struct socket*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sock_has_rx_data(struct socket *sock)
{
 if (unlikely(!sock))
  return 0;

 if (sock->ops->peek_len)
  return sock->ops->peek_len(sock);

 return skb_queue_empty(&sock->sk->sk_receive_queue);
}
