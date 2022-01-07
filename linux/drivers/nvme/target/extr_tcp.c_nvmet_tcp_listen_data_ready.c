
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; int sk_callback_lock; struct nvmet_tcp_port* sk_user_data; } ;
struct nvmet_tcp_port {int accept_work; } ;


 scalar_t__ TCP_LISTEN ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static void nvmet_tcp_listen_data_ready(struct sock *sk)
{
 struct nvmet_tcp_port *port;

 read_lock_bh(&sk->sk_callback_lock);
 port = sk->sk_user_data;
 if (!port)
  goto out;

 if (sk->sk_state == TCP_LISTEN)
  schedule_work(&port->accept_work);
out:
 read_unlock_bh(&sk->sk_callback_lock);
}
