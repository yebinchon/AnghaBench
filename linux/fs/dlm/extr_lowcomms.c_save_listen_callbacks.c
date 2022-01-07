
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_error_report; int sk_write_space; int sk_state_change; int sk_data_ready; } ;
struct TYPE_2__ {int sk_error_report; int sk_write_space; int sk_state_change; int sk_data_ready; } ;


 TYPE_1__ listen_sock ;

__attribute__((used)) static void save_listen_callbacks(struct socket *sock)
{
 struct sock *sk = sock->sk;

 listen_sock.sk_data_ready = sk->sk_data_ready;
 listen_sock.sk_state_change = sk->sk_state_change;
 listen_sock.sk_write_space = sk->sk_write_space;
 listen_sock.sk_error_report = sk->sk_error_report;
}
