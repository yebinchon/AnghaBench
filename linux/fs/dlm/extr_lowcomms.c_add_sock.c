
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_callback_lock; int sk_error_report; int sk_allocation; int sk_state_change; int sk_write_space; int sk_data_ready; struct connection* sk_user_data; } ;
struct connection {struct socket* sock; } ;


 int GFP_NOFS ;
 int lowcomms_data_ready ;
 int lowcomms_error_report ;
 int lowcomms_state_change ;
 int lowcomms_write_space ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void add_sock(struct socket *sock, struct connection *con)
{
 struct sock *sk = sock->sk;

 write_lock_bh(&sk->sk_callback_lock);
 con->sock = sock;

 sk->sk_user_data = con;

 sk->sk_data_ready = lowcomms_data_ready;
 sk->sk_write_space = lowcomms_write_space;
 sk->sk_state_change = lowcomms_state_change;
 sk->sk_allocation = GFP_NOFS;
 sk->sk_error_report = lowcomms_error_report;
 write_unlock_bh(&sk->sk_callback_lock);
}
