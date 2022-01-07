
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {void* sk_rcvtimeo; void* sk_sndtimeo; int sk_callback_lock; int sk_state_change; int sk_data_ready; int * sk_user_data; } ;
struct iscsi_conn {int orig_state_change; int orig_data_ready; TYPE_1__* sock; } ;
struct TYPE_2__ {struct sock* sk; } ;


 void* MAX_SCHEDULE_TIMEOUT ;
 int pr_debug (char*,struct iscsi_conn*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void iscsi_target_restore_sock_callbacks(struct iscsi_conn *conn)
{
 struct sock *sk;

 if (!conn->sock)
  return;

 sk = conn->sock->sk;
 pr_debug("Entering iscsi_target_restore_sock_callbacks: conn: %p\n", conn);

 write_lock_bh(&sk->sk_callback_lock);
 if (!sk->sk_user_data) {
  write_unlock_bh(&sk->sk_callback_lock);
  return;
 }
 sk->sk_user_data = ((void*)0);
 sk->sk_data_ready = conn->orig_data_ready;
 sk->sk_state_change = conn->orig_state_change;
 write_unlock_bh(&sk->sk_callback_lock);

 sk->sk_sndtimeo = MAX_SCHEDULE_TIMEOUT;
 sk->sk_rcvtimeo = MAX_SCHEDULE_TIMEOUT;
}
