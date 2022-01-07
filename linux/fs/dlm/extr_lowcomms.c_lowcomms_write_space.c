
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_callback_lock; } ;
struct connection {int swork; TYPE_2__* sock; int flags; } ;
struct TYPE_4__ {int flags; TYPE_1__* sk; } ;
struct TYPE_3__ {int sk_write_pending; } ;


 int CF_APP_LIMITED ;
 int SOCKWQ_ASYNC_NOSPACE ;
 int SOCK_NOSPACE ;
 int clear_bit (int ,int *) ;
 int queue_work (int ,int *) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int send_workqueue ;
 struct connection* sock2con (struct sock*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void lowcomms_write_space(struct sock *sk)
{
 struct connection *con;

 read_lock_bh(&sk->sk_callback_lock);
 con = sock2con(sk);
 if (!con)
  goto out;

 clear_bit(SOCK_NOSPACE, &con->sock->flags);

 if (test_and_clear_bit(CF_APP_LIMITED, &con->flags)) {
  con->sock->sk->sk_write_pending--;
  clear_bit(SOCKWQ_ASYNC_NOSPACE, &con->sock->flags);
 }

 queue_work(send_workqueue, &con->swork);
out:
 read_unlock_bh(&sk->sk_callback_lock);
}
