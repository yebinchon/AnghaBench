
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct iscsi_np {int np_network_transport; struct socket* np_socket; int np_sockaddr; void* np_ip_proto; void* np_sock_type; } ;
typedef int opt ;


 scalar_t__ AF_INET6 ;
 int EINVAL ;
 void* IPPROTO_IP ;
 void* IPPROTO_SCTP ;
 void* IPPROTO_TCP ;
 int IP_FREEBIND ;
 int ISCSIT_TCP_BACKLOG ;



 void* SOCK_SEQPACKET ;
 void* SOCK_STREAM ;
 void* SOL_SOCKET ;
 int SO_REUSEADDR ;
 int TCP_NODELAY ;
 int kernel_bind (struct socket*,struct sockaddr*,int) ;
 int kernel_listen (struct socket*,int) ;
 int kernel_setsockopt (struct socket*,void*,int ,char*,int) ;
 int memcpy (int *,struct sockaddr_storage*,int) ;
 int pr_err (char*,...) ;
 int sock_create (scalar_t__,void*,void*,struct socket**) ;
 int sock_release (struct socket*) ;

int iscsit_setup_np(
 struct iscsi_np *np,
 struct sockaddr_storage *sockaddr)
{
 struct socket *sock = ((void*)0);
 int backlog = ISCSIT_TCP_BACKLOG, ret, opt = 0, len;

 switch (np->np_network_transport) {
 case 128:
  np->np_ip_proto = IPPROTO_TCP;
  np->np_sock_type = SOCK_STREAM;
  break;
 case 130:
  np->np_ip_proto = IPPROTO_SCTP;
  np->np_sock_type = SOCK_STREAM;
  break;
 case 129:
  np->np_ip_proto = IPPROTO_SCTP;
  np->np_sock_type = SOCK_SEQPACKET;
  break;
 default:
  pr_err("Unsupported network_transport: %d\n",
    np->np_network_transport);
  return -EINVAL;
 }

 ret = sock_create(sockaddr->ss_family, np->np_sock_type,
   np->np_ip_proto, &sock);
 if (ret < 0) {
  pr_err("sock_create() failed.\n");
  return ret;
 }
 np->np_socket = sock;




 memcpy(&np->np_sockaddr, sockaddr,
   sizeof(struct sockaddr_storage));

 if (sockaddr->ss_family == AF_INET6)
  len = sizeof(struct sockaddr_in6);
 else
  len = sizeof(struct sockaddr_in);




 opt = 1;
 if (np->np_network_transport == 128) {
  ret = kernel_setsockopt(sock, IPPROTO_TCP, TCP_NODELAY,
    (char *)&opt, sizeof(opt));
  if (ret < 0) {
   pr_err("kernel_setsockopt() for TCP_NODELAY"
    " failed: %d\n", ret);
   goto fail;
  }
 }


 ret = kernel_setsockopt(sock, SOL_SOCKET, SO_REUSEADDR,
   (char *)&opt, sizeof(opt));
 if (ret < 0) {
  pr_err("kernel_setsockopt() for SO_REUSEADDR"
   " failed\n");
  goto fail;
 }

 ret = kernel_setsockopt(sock, IPPROTO_IP, IP_FREEBIND,
   (char *)&opt, sizeof(opt));
 if (ret < 0) {
  pr_err("kernel_setsockopt() for IP_FREEBIND"
   " failed\n");
  goto fail;
 }

 ret = kernel_bind(sock, (struct sockaddr *)&np->np_sockaddr, len);
 if (ret < 0) {
  pr_err("kernel_bind() failed: %d\n", ret);
  goto fail;
 }

 ret = kernel_listen(sock, backlog);
 if (ret != 0) {
  pr_err("kernel_listen() failed: %d\n", ret);
  goto fail;
 }

 return 0;
fail:
 np->np_socket = ((void*)0);
 sock_release(sock);
 return ret;
}
