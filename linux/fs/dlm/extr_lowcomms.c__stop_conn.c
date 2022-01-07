
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct connection {int sock_mutex; struct connection* othercon; TYPE_2__* sock; int flags; } ;
struct TYPE_4__ {TYPE_1__* sk; } ;
struct TYPE_3__ {int sk_callback_lock; int * sk_user_data; } ;


 int CF_CLOSE ;
 int CF_READ_PENDING ;
 int CF_WRITE_PENDING ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void _stop_conn(struct connection *con, bool and_other)
{
 mutex_lock(&con->sock_mutex);
 set_bit(CF_CLOSE, &con->flags);
 set_bit(CF_READ_PENDING, &con->flags);
 set_bit(CF_WRITE_PENDING, &con->flags);
 if (con->sock && con->sock->sk) {
  write_lock_bh(&con->sock->sk->sk_callback_lock);
  con->sock->sk->sk_user_data = ((void*)0);
  write_unlock_bh(&con->sock->sk->sk_callback_lock);
 }
 if (con->othercon && and_other)
  _stop_conn(con->othercon, 0);
 mutex_unlock(&con->sock_mutex);
}
