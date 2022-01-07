
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {TYPE_2__* ops; TYPE_1__* sk; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct connection {int * sock; int connect_action; int rx_action; } ;
typedef int one ;
struct TYPE_8__ {int ci_tcp_port; } ;
struct TYPE_7__ {scalar_t__ ss_family; } ;
struct TYPE_6__ {int (* bind ) (struct socket*,struct sockaddr*,int) ;int (* listen ) (struct socket*,int) ;} ;
struct TYPE_5__ {int sk_callback_lock; struct connection* sk_user_data; } ;


 scalar_t__ AF_INET ;
 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SOL_TCP ;
 int SO_KEEPALIVE ;
 int SO_REUSEADDR ;
 int TCP_NODELAY ;
 TYPE_4__ dlm_config ;
 TYPE_3__** dlm_local_addr ;
 int init_net ;
 int kernel_setsockopt (struct socket*,int ,int ,char*,int) ;
 int log_print (char*,...) ;
 int make_sockaddr (struct sockaddr_storage*,int,int*) ;
 int save_listen_callbacks (struct socket*) ;
 int sock_create_kern (int *,scalar_t__,int ,int ,struct socket**) ;
 int sock_release (struct socket*) ;
 int stub1 (struct socket*,struct sockaddr*,int) ;
 int stub2 (struct socket*,int) ;
 int tcp_accept_from_sock ;
 int tcp_connect_to_sock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static struct socket *tcp_create_listen_sock(struct connection *con,
          struct sockaddr_storage *saddr)
{
 struct socket *sock = ((void*)0);
 int result = 0;
 int one = 1;
 int addr_len;

 if (dlm_local_addr[0]->ss_family == AF_INET)
  addr_len = sizeof(struct sockaddr_in);
 else
  addr_len = sizeof(struct sockaddr_in6);


 result = sock_create_kern(&init_net, dlm_local_addr[0]->ss_family,
      SOCK_STREAM, IPPROTO_TCP, &sock);
 if (result < 0) {
  log_print("Can't create listening comms socket");
  goto create_out;
 }


 kernel_setsockopt(sock, SOL_TCP, TCP_NODELAY, (char *)&one,
     sizeof(one));

 result = kernel_setsockopt(sock, SOL_SOCKET, SO_REUSEADDR,
       (char *)&one, sizeof(one));

 if (result < 0) {
  log_print("Failed to set SO_REUSEADDR on socket: %d", result);
 }
 write_lock_bh(&sock->sk->sk_callback_lock);
 sock->sk->sk_user_data = con;
 save_listen_callbacks(sock);
 con->rx_action = tcp_accept_from_sock;
 con->connect_action = tcp_connect_to_sock;
 write_unlock_bh(&sock->sk->sk_callback_lock);


 make_sockaddr(saddr, dlm_config.ci_tcp_port, &addr_len);
 result = sock->ops->bind(sock, (struct sockaddr *) saddr, addr_len);
 if (result < 0) {
  log_print("Can't bind to port %d", dlm_config.ci_tcp_port);
  sock_release(sock);
  sock = ((void*)0);
  con->sock = ((void*)0);
  goto create_out;
 }
 result = kernel_setsockopt(sock, SOL_SOCKET, SO_KEEPALIVE,
     (char *)&one, sizeof(one));
 if (result < 0) {
  log_print("Set keepalive failed: %d", result);
 }

 result = sock->ops->listen(sock, 5);
 if (result < 0) {
  log_print("Can't listen on port %d", dlm_config.ci_tcp_port);
  sock_release(sock);
  sock = ((void*)0);
  goto create_out;
 }

create_out:
 return sock;
}
