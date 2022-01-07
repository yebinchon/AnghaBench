
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {TYPE_2__* ops; TYPE_1__* sk; } ;
struct connection {struct socket* sock; int connect_action; int rx_action; } ;
typedef int one ;
typedef int bufsize ;
struct TYPE_8__ {int ci_tcp_port; } ;
struct TYPE_7__ {int ss_family; } ;
struct TYPE_6__ {int (* listen ) (struct socket*,int) ;} ;
struct TYPE_5__ {int sk_callback_lock; int sk_data_ready; struct connection* sk_user_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 int IPPROTO_SCTP ;
 int NEEDED_RMEM ;
 int SCTP_NODELAY ;
 int SOCK_STREAM ;
 int SOL_SCTP ;
 int SOL_SOCKET ;
 int SO_RCVBUFFORCE ;
 TYPE_4__ dlm_config ;
 TYPE_3__** dlm_local_addr ;
 int init_net ;
 int kernel_setsockopt (struct socket*,int ,int ,char*,int) ;
 int log_print (char*,...) ;
 int lowcomms_data_ready ;
 struct connection* nodeid2con (int ,int ) ;
 int save_listen_callbacks (struct socket*) ;
 int sctp_accept_from_sock ;
 scalar_t__ sctp_bind_addrs (struct connection*,int ) ;
 int sctp_connect_to_sock ;
 int sock_create_kern (int *,int ,int ,int ,struct socket**) ;
 int sock_release (struct socket*) ;
 int stub1 (struct socket*,int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int sctp_listen_for_all(void)
{
 struct socket *sock = ((void*)0);
 int result = -EINVAL;
 struct connection *con = nodeid2con(0, GFP_NOFS);
 int bufsize = NEEDED_RMEM;
 int one = 1;

 if (!con)
  return -ENOMEM;

 log_print("Using SCTP for communications");

 result = sock_create_kern(&init_net, dlm_local_addr[0]->ss_family,
      SOCK_STREAM, IPPROTO_SCTP, &sock);
 if (result < 0) {
  log_print("Can't create comms socket, check SCTP is loaded");
  goto out;
 }

 result = kernel_setsockopt(sock, SOL_SOCKET, SO_RCVBUFFORCE,
     (char *)&bufsize, sizeof(bufsize));
 if (result)
  log_print("Error increasing buffer space on socket %d", result);

 result = kernel_setsockopt(sock, SOL_SCTP, SCTP_NODELAY, (char *)&one,
       sizeof(one));
 if (result < 0)
  log_print("Could not set SCTP NODELAY error %d\n", result);

 write_lock_bh(&sock->sk->sk_callback_lock);

 sock->sk->sk_user_data = con;
 save_listen_callbacks(sock);
 con->sock = sock;
 con->sock->sk->sk_data_ready = lowcomms_data_ready;
 con->rx_action = sctp_accept_from_sock;
 con->connect_action = sctp_connect_to_sock;

 write_unlock_bh(&sock->sk->sk_callback_lock);


 if (sctp_bind_addrs(con, dlm_config.ci_tcp_port))
  goto create_delsock;

 result = sock->ops->listen(sock, 5);
 if (result < 0) {
  log_print("Can't set socket listening");
  goto create_delsock;
 }

 return 0;

create_delsock:
 sock_release(sock);
 con->sock = ((void*)0);
out:
 return result;
}
