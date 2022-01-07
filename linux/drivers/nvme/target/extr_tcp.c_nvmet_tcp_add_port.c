
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct TYPE_13__ {int ss_family; } ;
struct nvmet_tcp_port {int last_cpu; TYPE_3__* sock; TYPE_5__ addr; int data_ready; struct nvmet_port* nport; int accept_work; } ;
struct TYPE_11__ {int adrfam; int portid; int trsvcid; int traddr; } ;
struct nvmet_port {scalar_t__ inline_data_size; TYPE_2__ disc_addr; struct nvmet_tcp_port* priv; } ;
typedef int opt ;
typedef int __kernel_sa_family_t ;
struct TYPE_12__ {TYPE_1__* sk; } ;
struct TYPE_10__ {int sk_data_ready; struct nvmet_tcp_port* sk_user_data; } ;


 int AF_INET ;
 int AF_INET6 ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int IPPROTO_TCP ;
 scalar_t__ NVMET_TCP_DEF_INLINE_DATA_SIZE ;


 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int TCP_NODELAY ;
 int inet_pton_with_scope (int *,int ,int ,int ,TYPE_5__*) ;
 int init_net ;
 int kernel_bind (TYPE_3__*,struct sockaddr*,int) ;
 int kernel_listen (TYPE_3__*,int) ;
 int kernel_setsockopt (TYPE_3__*,int ,int ,char*,int) ;
 int kfree (struct nvmet_tcp_port*) ;
 struct nvmet_tcp_port* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int nvmet_tcp_accept_work ;
 int nvmet_tcp_listen_data_ready ;
 int pr_err (char*,...) ;
 int pr_info (char*,int ,TYPE_5__*) ;
 int sock_create (int ,int ,int ,TYPE_3__**) ;
 int sock_release (TYPE_3__*) ;

__attribute__((used)) static int nvmet_tcp_add_port(struct nvmet_port *nport)
{
 struct nvmet_tcp_port *port;
 __kernel_sa_family_t af;
 int opt, ret;

 port = kzalloc(sizeof(*port), GFP_KERNEL);
 if (!port)
  return -ENOMEM;

 switch (nport->disc_addr.adrfam) {
 case 129:
  af = AF_INET;
  break;
 case 128:
  af = AF_INET6;
  break;
 default:
  pr_err("address family %d not supported\n",
    nport->disc_addr.adrfam);
  ret = -EINVAL;
  goto err_port;
 }

 ret = inet_pton_with_scope(&init_net, af, nport->disc_addr.traddr,
   nport->disc_addr.trsvcid, &port->addr);
 if (ret) {
  pr_err("malformed ip/port passed: %s:%s\n",
   nport->disc_addr.traddr, nport->disc_addr.trsvcid);
  goto err_port;
 }

 port->nport = nport;
 port->last_cpu = -1;
 INIT_WORK(&port->accept_work, nvmet_tcp_accept_work);
 if (port->nport->inline_data_size < 0)
  port->nport->inline_data_size = NVMET_TCP_DEF_INLINE_DATA_SIZE;

 ret = sock_create(port->addr.ss_family, SOCK_STREAM,
    IPPROTO_TCP, &port->sock);
 if (ret) {
  pr_err("failed to create a socket\n");
  goto err_port;
 }

 port->sock->sk->sk_user_data = port;
 port->data_ready = port->sock->sk->sk_data_ready;
 port->sock->sk->sk_data_ready = nvmet_tcp_listen_data_ready;

 opt = 1;
 ret = kernel_setsockopt(port->sock, IPPROTO_TCP,
   TCP_NODELAY, (char *)&opt, sizeof(opt));
 if (ret) {
  pr_err("failed to set TCP_NODELAY sock opt %d\n", ret);
  goto err_sock;
 }

 ret = kernel_setsockopt(port->sock, SOL_SOCKET, SO_REUSEADDR,
   (char *)&opt, sizeof(opt));
 if (ret) {
  pr_err("failed to set SO_REUSEADDR sock opt %d\n", ret);
  goto err_sock;
 }

 ret = kernel_bind(port->sock, (struct sockaddr *)&port->addr,
   sizeof(port->addr));
 if (ret) {
  pr_err("failed to bind port socket %d\n", ret);
  goto err_sock;
 }

 ret = kernel_listen(port->sock, 128);
 if (ret) {
  pr_err("failed to listen %d on port sock\n", ret);
  goto err_sock;
 }

 nport->priv = port;
 pr_info("enabling port %d (%pISpc)\n",
  le16_to_cpu(nport->disc_addr.portid), &port->addr);

 return 0;

err_sock:
 sock_release(port->sock);
err_port:
 kfree(port);
 return ret;
}
