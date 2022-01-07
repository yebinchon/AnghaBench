
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvmet_tcp_port {TYPE_2__* sock; int accept_work; int data_ready; } ;
struct nvmet_port {struct nvmet_tcp_port* priv; } ;
struct TYPE_4__ {TYPE_1__* sk; } ;
struct TYPE_3__ {int sk_callback_lock; int * sk_user_data; int sk_data_ready; } ;


 int cancel_work_sync (int *) ;
 int kfree (struct nvmet_tcp_port*) ;
 int sock_release (TYPE_2__*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void nvmet_tcp_remove_port(struct nvmet_port *nport)
{
 struct nvmet_tcp_port *port = nport->priv;

 write_lock_bh(&port->sock->sk->sk_callback_lock);
 port->sock->sk->sk_data_ready = port->data_ready;
 port->sock->sk->sk_user_data = ((void*)0);
 write_unlock_bh(&port->sock->sk->sk_callback_lock);
 cancel_work_sync(&port->accept_work);

 sock_release(port->sock);
 kfree(port);
}
