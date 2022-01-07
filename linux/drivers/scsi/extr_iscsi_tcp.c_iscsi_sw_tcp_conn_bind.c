
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct socket {TYPE_1__* ops; struct sock* sk; } ;
struct sock {int sk_sndtimeo; int sk_allocation; int sk_reuse; } ;
struct iscsi_tcp_conn {struct iscsi_sw_tcp_conn* dd_data; } ;
struct iscsi_sw_tcp_conn {struct socket* sock; int sendpage; } ;
struct iscsi_session {int frwd_lock; } ;
struct iscsi_conn {struct iscsi_tcp_conn* dd_data; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct TYPE_2__ {int sendpage; } ;


 int EEXIST ;
 int GFP_ATOMIC ;
 int HZ ;
 int KERN_ERR ;
 int SK_CAN_REUSE ;
 int iscsi_conn_bind (struct iscsi_cls_session*,struct iscsi_cls_conn*,int) ;
 int iscsi_conn_printk (int ,struct iscsi_conn*,char*,int) ;
 int iscsi_sw_tcp_conn_set_callbacks (struct iscsi_conn*) ;
 int iscsi_tcp_hdr_recv_prep (struct iscsi_tcp_conn*) ;
 int sk_set_memalloc (struct sock*) ;
 struct socket* sockfd_lookup (int,int*) ;
 int sockfd_put (struct socket*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
iscsi_sw_tcp_conn_bind(struct iscsi_cls_session *cls_session,
         struct iscsi_cls_conn *cls_conn, uint64_t transport_eph,
         int is_leading)
{
 struct iscsi_session *session = cls_session->dd_data;
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
 struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
 struct sock *sk;
 struct socket *sock;
 int err;


 sock = sockfd_lookup((int)transport_eph, &err);
 if (!sock) {
  iscsi_conn_printk(KERN_ERR, conn,
      "sockfd_lookup failed %d\n", err);
  return -EEXIST;
 }

 err = iscsi_conn_bind(cls_session, cls_conn, is_leading);
 if (err)
  goto free_socket;

 spin_lock_bh(&session->frwd_lock);

 tcp_sw_conn->sock = sock;
 spin_unlock_bh(&session->frwd_lock);


 sk = sock->sk;
 sk->sk_reuse = SK_CAN_REUSE;
 sk->sk_sndtimeo = 15 * HZ;
 sk->sk_allocation = GFP_ATOMIC;
 sk_set_memalloc(sk);

 iscsi_sw_tcp_conn_set_callbacks(conn);
 tcp_sw_conn->sendpage = tcp_sw_conn->sock->ops->sendpage;



 iscsi_tcp_hdr_recv_prep(tcp_conn);
 return 0;

free_socket:
 sockfd_put(sock);
 return err;
}
