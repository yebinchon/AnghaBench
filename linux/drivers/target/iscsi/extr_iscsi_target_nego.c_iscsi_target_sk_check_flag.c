
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_callback_lock; } ;
struct iscsi_conn {int login_flags; TYPE_1__* sock; } ;
struct TYPE_2__ {struct sock* sk; } ;


 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int test_bit (unsigned int,int *) ;

__attribute__((used)) static bool iscsi_target_sk_check_flag(struct iscsi_conn *conn, unsigned int flag)
{
 bool state = 0;

 if (conn->sock) {
  struct sock *sk = conn->sock->sk;

  read_lock_bh(&sk->sk_callback_lock);
  state = test_bit(flag, &conn->login_flags);
  read_unlock_bh(&sk->sk_callback_lock);
 }
 return state;
}
