
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_callback_lock; int sk_error_report; int sk_write_space; int sk_state_change; int sk_data_ready; int * sk_user_data; } ;
struct TYPE_2__ {int sk_error_report; int sk_write_space; int sk_state_change; int sk_data_ready; } ;


 TYPE_1__ listen_sock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void restore_callbacks(struct socket *sock)
{
 struct sock *sk = sock->sk;

 write_lock_bh(&sk->sk_callback_lock);
 sk->sk_user_data = ((void*)0);
 sk->sk_data_ready = listen_sock.sk_data_ready;
 sk->sk_state_change = listen_sock.sk_state_change;
 sk->sk_write_space = listen_sock.sk_write_space;
 sk->sk_error_report = listen_sock.sk_error_report;
 write_unlock_bh(&sk->sk_callback_lock);
}
