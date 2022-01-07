
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct TYPE_5__ {scalar_t__ sin6_port; int sin6_family; } ;
struct TYPE_6__ {TYPE_2__ sin6; } ;
struct sockaddr_rxrpc {int transport_len; int srx_service; TYPE_3__ transport; int transport_type; int srx_family; } ;
struct sockaddr {int dummy; } ;
struct afs_net {int charge_preallocation_work; struct socket* socket; int net; } ;
typedef int srx ;
typedef int min_level ;
struct TYPE_4__ {int sk_allocation; } ;


 int AFS_CM_PORT ;
 int AF_INET6 ;
 int AF_RXRPC ;
 int CM_SERVICE ;
 int EADDRINUSE ;
 int GFP_NOFS ;
 int INT_MAX ;
 int PF_INET6 ;
 int RXRPC_MIN_SECURITY_LEVEL ;
 unsigned int RXRPC_SECURITY_ENCRYPT ;
 int SOCK_DGRAM ;
 int SOL_RXRPC ;
 int YFS_CM_SERVICE ;
 int _enter (char*) ;
 int _leave (char*,...) ;
 int afs_charge_preallocation (int *) ;
 int afs_rx_discard_new_call ;
 int afs_rx_new_call ;
 scalar_t__ htons (int ) ;
 int kernel_bind (struct socket*,struct sockaddr*,int) ;
 int kernel_listen (struct socket*,int ) ;
 int kernel_setsockopt (struct socket*,int ,int ,void*,int) ;
 int memset (struct sockaddr_rxrpc*,int ,int) ;
 int rxrpc_kernel_new_call_notification (struct socket*,int ,int ) ;
 int sock_create_kern (int ,int ,int ,int ,struct socket**) ;
 int sock_release (struct socket*) ;

int afs_open_socket(struct afs_net *net)
{
 struct sockaddr_rxrpc srx;
 struct socket *socket;
 unsigned int min_level;
 int ret;

 _enter("");

 ret = sock_create_kern(net->net, AF_RXRPC, SOCK_DGRAM, PF_INET6, &socket);
 if (ret < 0)
  goto error_1;

 socket->sk->sk_allocation = GFP_NOFS;


 memset(&srx, 0, sizeof(srx));
 srx.srx_family = AF_RXRPC;
 srx.srx_service = CM_SERVICE;
 srx.transport_type = SOCK_DGRAM;
 srx.transport_len = sizeof(srx.transport.sin6);
 srx.transport.sin6.sin6_family = AF_INET6;
 srx.transport.sin6.sin6_port = htons(AFS_CM_PORT);

 min_level = RXRPC_SECURITY_ENCRYPT;
 ret = kernel_setsockopt(socket, SOL_RXRPC, RXRPC_MIN_SECURITY_LEVEL,
    (void *)&min_level, sizeof(min_level));
 if (ret < 0)
  goto error_2;

 ret = kernel_bind(socket, (struct sockaddr *) &srx, sizeof(srx));
 if (ret == -EADDRINUSE) {
  srx.transport.sin6.sin6_port = 0;
  ret = kernel_bind(socket, (struct sockaddr *) &srx, sizeof(srx));
 }
 if (ret < 0)
  goto error_2;

 srx.srx_service = YFS_CM_SERVICE;
 ret = kernel_bind(socket, (struct sockaddr *) &srx, sizeof(srx));
 if (ret < 0)
  goto error_2;
 rxrpc_kernel_new_call_notification(socket, afs_rx_new_call,
        afs_rx_discard_new_call);

 ret = kernel_listen(socket, INT_MAX);
 if (ret < 0)
  goto error_2;

 net->socket = socket;
 afs_charge_preallocation(&net->charge_preallocation_work);
 _leave(" = 0");
 return 0;

error_2:
 sock_release(socket);
error_1:
 _leave(" = %d", ret);
 return ret;
}
