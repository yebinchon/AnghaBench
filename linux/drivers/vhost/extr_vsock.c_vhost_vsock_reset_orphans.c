
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int svm_cid; } ;
struct vsock_sock {int peer_shutdown; scalar_t__ close_work_scheduled; TYPE_1__ remote_addr; } ;
struct sock {int (* sk_error_report ) (struct sock*) ;int sk_err; int sk_state; } ;


 int ECONNRESET ;
 int SHUTDOWN_MASK ;
 int SOCK_DONE ;
 int SS_UNCONNECTED ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;
 scalar_t__ vhost_vsock_get (int ) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static void vhost_vsock_reset_orphans(struct sock *sk)
{
 struct vsock_sock *vsk = vsock_sk(sk);







 if (vhost_vsock_get(vsk->remote_addr.svm_cid))
  return;




 if (vsk->close_work_scheduled)
  return;

 sock_set_flag(sk, SOCK_DONE);
 vsk->peer_shutdown = SHUTDOWN_MASK;
 sk->sk_state = SS_UNCONNECTED;
 sk->sk_err = ECONNRESET;
 sk->sk_error_report(sk);
}
