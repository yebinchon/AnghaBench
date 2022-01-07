
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_callback_lock; int sk_write_space; int sk_state_change; int sk_data_ready; struct iscsi_conn* sk_user_data; } ;
struct iscsi_tcp_conn {struct iscsi_sw_tcp_conn* dd_data; } ;
struct iscsi_sw_tcp_conn {int old_write_space; int old_state_change; int old_data_ready; TYPE_1__* sock; } ;
struct iscsi_conn {struct iscsi_tcp_conn* dd_data; } ;
struct TYPE_2__ {struct sock* sk; } ;


 int iscsi_sw_tcp_data_ready ;
 int iscsi_sw_tcp_state_change ;
 int iscsi_sw_tcp_write_space ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void iscsi_sw_tcp_conn_set_callbacks(struct iscsi_conn *conn)
{
 struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
 struct iscsi_sw_tcp_conn *tcp_sw_conn = tcp_conn->dd_data;
 struct sock *sk = tcp_sw_conn->sock->sk;


 write_lock_bh(&sk->sk_callback_lock);
 sk->sk_user_data = conn;
 tcp_sw_conn->old_data_ready = sk->sk_data_ready;
 tcp_sw_conn->old_state_change = sk->sk_state_change;
 tcp_sw_conn->old_write_space = sk->sk_write_space;
 sk->sk_data_ready = iscsi_sw_tcp_data_ready;
 sk->sk_state_change = iscsi_sw_tcp_state_change;
 sk->sk_write_space = iscsi_sw_tcp_write_space;
 write_unlock_bh(&sk->sk_callback_lock);
}
