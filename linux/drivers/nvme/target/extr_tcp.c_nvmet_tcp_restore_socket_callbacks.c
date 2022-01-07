
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct nvmet_tcp_queue {int write_space; int state_change; int data_ready; struct socket* sock; } ;
struct TYPE_2__ {int sk_callback_lock; int * sk_user_data; int sk_write_space; int sk_state_change; int sk_data_ready; } ;


 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void nvmet_tcp_restore_socket_callbacks(struct nvmet_tcp_queue *queue)
{
 struct socket *sock = queue->sock;

 write_lock_bh(&sock->sk->sk_callback_lock);
 sock->sk->sk_data_ready = queue->data_ready;
 sock->sk->sk_state_change = queue->state_change;
 sock->sk->sk_write_space = queue->write_space;
 sock->sk->sk_user_data = ((void*)0);
 write_unlock_bh(&sock->sk->sk_callback_lock);
}
