
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct iscsi_tcp_conn {struct iscsi_sw_tcp_conn* dd_data; } ;
struct iscsi_sw_tcp_conn {int sock; } ;
struct iscsi_conn {TYPE_1__* session; struct iscsi_tcp_conn* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
typedef enum iscsi_param { ____Placeholder_iscsi_param } iscsi_param ;
struct TYPE_2__ {int frwd_lock; } ;


 int ENOTCONN ;



 int iscsi_conn_get_addr_param (struct sockaddr_storage*,int,char*) ;
 int iscsi_conn_get_param (struct iscsi_cls_conn*,int,char*) ;
 int kernel_getpeername (int ,struct sockaddr*) ;
 int kernel_getsockname (int ,struct sockaddr*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int iscsi_sw_tcp_conn_get_param(struct iscsi_cls_conn *cls_conn,
           enum iscsi_param param, char *buf)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
 struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
 struct sockaddr_in6 addr;
 int rc;

 switch(param) {
 case 129:
 case 130:
 case 128:
  spin_lock_bh(&conn->session->frwd_lock);
  if (!tcp_sw_conn || !tcp_sw_conn->sock) {
   spin_unlock_bh(&conn->session->frwd_lock);
   return -ENOTCONN;
  }
  if (param == 128)
   rc = kernel_getsockname(tcp_sw_conn->sock,
      (struct sockaddr *)&addr);
  else
   rc = kernel_getpeername(tcp_sw_conn->sock,
      (struct sockaddr *)&addr);
  spin_unlock_bh(&conn->session->frwd_lock);
  if (rc < 0)
   return rc;

  return iscsi_conn_get_addr_param((struct sockaddr_storage *)
       &addr, param, buf);
 default:
  return iscsi_conn_get_param(cls_conn, param, buf);
 }

 return 0;
}
