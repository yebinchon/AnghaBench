
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_shutdown; scalar_t__ sk_state; } ;


 scalar_t__ RCV_SHUTDOWN ;
 scalar_t__ TCP_ESTABLISHED ;
 int lowcomms_data_ready (struct sock*) ;
 int lowcomms_write_space (struct sock*) ;

__attribute__((used)) static void lowcomms_state_change(struct sock *sk)
{





 if (sk->sk_shutdown) {
  if (sk->sk_shutdown == RCV_SHUTDOWN)
   lowcomms_data_ready(sk);
 } else if (sk->sk_state == TCP_ESTABLISHED) {
  lowcomms_write_space(sk);
 }
}
