
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;


 scalar_t__ TCP_CLOSE ;
 scalar_t__ TCP_CLOSE_WAIT ;
 int pr_debug (char*) ;

__attribute__((used)) static bool __iscsi_target_sk_check_close(struct sock *sk)
{
 if (sk->sk_state == TCP_CLOSE_WAIT || sk->sk_state == TCP_CLOSE) {
  pr_debug("__iscsi_target_sk_check_close: TCP_CLOSE_WAIT|TCP_CLOSE,"
   "returning FALSE\n");
  return 1;
 }
 return 0;
}
