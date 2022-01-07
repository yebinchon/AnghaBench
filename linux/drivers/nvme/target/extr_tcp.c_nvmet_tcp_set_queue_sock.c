
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tos ;
struct socket {TYPE_1__* sk; } ;
struct sockaddr {int dummy; } ;
struct nvmet_tcp_queue {int write_space; int state_change; int data_ready; int sockaddr_peer; int sockaddr; struct socket* sock; } ;
struct linger {int l_onoff; int l_linger; } ;
struct inet_sock {int rcv_tos; } ;
typedef int sol ;
struct TYPE_2__ {int sk_callback_lock; int sk_write_space; int sk_state_change; int sk_data_ready; struct nvmet_tcp_queue* sk_user_data; } ;


 int IP_TOS ;
 int SOL_IP ;
 int SOL_SOCKET ;
 int SO_LINGER ;
 struct inet_sock* inet_sk (TYPE_1__*) ;
 int kernel_getpeername (struct socket*,struct sockaddr*) ;
 int kernel_getsockname (struct socket*,struct sockaddr*) ;
 int kernel_setsockopt (struct socket*,int ,int ,char*,int) ;
 int nvmet_tcp_data_ready ;
 int nvmet_tcp_state_change ;
 int nvmet_tcp_write_space ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int nvmet_tcp_set_queue_sock(struct nvmet_tcp_queue *queue)
{
 struct socket *sock = queue->sock;
 struct inet_sock *inet = inet_sk(sock->sk);
 struct linger sol = { .l_onoff = 1, .l_linger = 0 };
 int ret;

 ret = kernel_getsockname(sock,
  (struct sockaddr *)&queue->sockaddr);
 if (ret < 0)
  return ret;

 ret = kernel_getpeername(sock,
  (struct sockaddr *)&queue->sockaddr_peer);
 if (ret < 0)
  return ret;






 ret = kernel_setsockopt(sock, SOL_SOCKET, SO_LINGER,
   (char *)&sol, sizeof(sol));
 if (ret)
  return ret;


 if (inet->rcv_tos > 0) {
  int tos = inet->rcv_tos;

  ret = kernel_setsockopt(sock, SOL_IP, IP_TOS,
    (char *)&tos, sizeof(tos));
  if (ret)
   return ret;
 }

 write_lock_bh(&sock->sk->sk_callback_lock);
 sock->sk->sk_user_data = queue;
 queue->data_ready = sock->sk->sk_data_ready;
 sock->sk->sk_data_ready = nvmet_tcp_data_ready;
 queue->state_change = sock->sk->sk_state_change;
 sock->sk->sk_state_change = nvmet_tcp_state_change;
 queue->write_space = sock->sk->sk_write_space;
 sock->sk->sk_write_space = nvmet_tcp_write_space;
 write_unlock_bh(&sock->sk->sk_callback_lock);

 return 0;
}
