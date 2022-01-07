
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct sockaddr_qrtr {int dummy; } ;
struct sockaddr {int dummy; } ;
struct qmi_handle {int dummy; } ;
struct TYPE_2__ {void* sk_error_report; void* sk_data_ready; struct qmi_handle* sk_user_data; } ;


 int AF_QIPCRTR ;
 struct socket* ERR_PTR (int) ;
 int PF_QIPCRTR ;
 int SOCK_DGRAM ;
 int init_net ;
 int kernel_getsockname (struct socket*,struct sockaddr*) ;
 void* qmi_data_ready ;
 int sock_create_kern (int *,int ,int ,int ,struct socket**) ;
 int sock_release (struct socket*) ;

__attribute__((used)) static struct socket *qmi_sock_create(struct qmi_handle *qmi,
          struct sockaddr_qrtr *sq)
{
 struct socket *sock;
 int ret;

 ret = sock_create_kern(&init_net, AF_QIPCRTR, SOCK_DGRAM,
          PF_QIPCRTR, &sock);
 if (ret < 0)
  return ERR_PTR(ret);

 ret = kernel_getsockname(sock, (struct sockaddr *)sq);
 if (ret < 0) {
  sock_release(sock);
  return ERR_PTR(ret);
 }

 sock->sk->sk_user_data = qmi;
 sock->sk->sk_data_ready = qmi_data_ready;
 sock->sk->sk_error_report = qmi_data_ready;

 return sock;
}
