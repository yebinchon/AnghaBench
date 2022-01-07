
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct iscsi_tcp_conn {struct iscsi_sw_tcp_conn* dd_data; } ;
struct iscsi_sw_tcp_conn {struct socket* sock; } ;
struct iscsi_conn {struct iscsi_tcp_conn* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct TYPE_2__ {int sk_err; } ;


 int EIO ;
 int iscsi_conn_stop (struct iscsi_cls_conn*,int) ;
 int iscsi_suspend_tx (struct iscsi_conn*) ;
 int iscsi_sw_tcp_release_conn (struct iscsi_conn*) ;
 int sk_sleep (TYPE_1__*) ;
 int wake_up_interruptible (int ) ;

__attribute__((used)) static void iscsi_sw_tcp_conn_stop(struct iscsi_cls_conn *cls_conn, int flag)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
 struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
 struct socket *sock = tcp_sw_conn->sock;


 if (!sock)
  return;

 sock->sk->sk_err = EIO;
 wake_up_interruptible(sk_sleep(sock->sk));


 iscsi_suspend_tx(conn);


 iscsi_sw_tcp_release_conn(conn);

 iscsi_conn_stop(cls_conn, flag);
}
