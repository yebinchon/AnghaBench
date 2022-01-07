
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tv ;
struct timeval {int tv_sec; int tv_usec; } ;
struct socket {TYPE_1__* ops; } ;
struct sockaddr_storage {int tv_sec; int tv_usec; } ;
struct sockaddr {int dummy; } ;
struct connection {scalar_t__ nodeid; void (* connect_action ) (struct connection*) ;int sock_mutex; int retries; int * sock; int rx_action; } ;
typedef int one ;
typedef int daddr ;
struct TYPE_6__ {int ci_tcp_port; } ;
struct TYPE_5__ {int ss_family; } ;
struct TYPE_4__ {int (* connect ) (struct socket*,struct sockaddr*,int,int ) ;} ;


 int EHOSTUNREACH ;
 int EINPROGRESS ;
 int EINVAL ;
 int ENETDOWN ;
 int ENETUNREACH ;
 int EPROTONOSUPPORT ;
 int IPPROTO_SCTP ;
 scalar_t__ MAX_CONNECT_RETRIES ;
 int SCTP_NODELAY ;
 int SOCK_STREAM ;
 int SOL_SCTP ;
 int SOL_SOCKET ;
 int SO_SNDTIMEO_OLD ;
 int add_sock (struct socket*,struct connection*) ;
 TYPE_3__ dlm_config ;
 TYPE_2__** dlm_local_addr ;
 int init_net ;
 int kernel_setsockopt (struct socket*,int ,int ,char*,int) ;
 int log_print (char*,...) ;
 int lowcomms_connect_sock (struct connection*) ;
 int make_sockaddr (struct timeval*,int ,int*) ;
 int memset (struct timeval*,int ,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nodeid_to_addr (scalar_t__,struct timeval*,int *,int) ;
 int receive_from_sock ;
 scalar_t__ sctp_bind_addrs (struct connection*,int ) ;
 int sock_create_kern (int *,int ,int ,int ,struct socket**) ;
 int sock_release (struct socket*) ;
 int stub1 (struct socket*,struct sockaddr*,int,int ) ;

__attribute__((used)) static void sctp_connect_to_sock(struct connection *con)
{
 struct sockaddr_storage daddr;
 int one = 1;
 int result;
 int addr_len;
 struct socket *sock;
 struct timeval tv = { .tv_sec = 5, .tv_usec = 0 };

 if (con->nodeid == 0) {
  log_print("attempt to connect sock 0 foiled");
  return;
 }

 mutex_lock(&con->sock_mutex);


 if (con->retries++ > MAX_CONNECT_RETRIES)
  goto out;

 if (con->sock) {
  log_print("node %d already connected.", con->nodeid);
  goto out;
 }

 memset(&daddr, 0, sizeof(daddr));
 result = nodeid_to_addr(con->nodeid, &daddr, ((void*)0), 1);
 if (result < 0) {
  log_print("no address for nodeid %d", con->nodeid);
  goto out;
 }


 result = sock_create_kern(&init_net, dlm_local_addr[0]->ss_family,
      SOCK_STREAM, IPPROTO_SCTP, &sock);
 if (result < 0)
  goto socket_err;

 con->rx_action = receive_from_sock;
 con->connect_action = sctp_connect_to_sock;
 add_sock(sock, con);


 if (sctp_bind_addrs(con, 0))
  goto bind_err;

 make_sockaddr(&daddr, dlm_config.ci_tcp_port, &addr_len);

 log_print("connecting to %d", con->nodeid);


 kernel_setsockopt(sock, SOL_SCTP, SCTP_NODELAY, (char *)&one,
     sizeof(one));






 kernel_setsockopt(sock, SOL_SOCKET, SO_SNDTIMEO_OLD, (char *)&tv,
     sizeof(tv));
 result = sock->ops->connect(sock, (struct sockaddr *)&daddr, addr_len,
       0);
 memset(&tv, 0, sizeof(tv));
 kernel_setsockopt(sock, SOL_SOCKET, SO_SNDTIMEO_OLD, (char *)&tv,
     sizeof(tv));

 if (result == -EINPROGRESS)
  result = 0;
 if (result == 0)
  goto out;

bind_err:
 con->sock = ((void*)0);
 sock_release(sock);

socket_err:




 if (result != -EHOSTUNREACH &&
     result != -ENETUNREACH &&
     result != -ENETDOWN &&
     result != -EINVAL &&
     result != -EPROTONOSUPPORT) {
  log_print("connect %d try %d error %d", con->nodeid,
     con->retries, result);
  mutex_unlock(&con->sock_mutex);
  msleep(1000);
  lowcomms_connect_sock(con);
  return;
 }

out:
 mutex_unlock(&con->sock_mutex);
}
