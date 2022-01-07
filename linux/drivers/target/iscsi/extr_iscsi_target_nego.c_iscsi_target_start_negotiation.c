
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_callback_lock; } ;
struct iscsi_login {int dummy; } ;
struct iscsi_conn {int login_work; int login_flags; TYPE_1__* sock; } ;
struct TYPE_2__ {struct sock* sk; } ;


 int LOGIN_FLAGS_INITIAL_PDU ;
 int LOGIN_FLAGS_READY ;
 int cancel_delayed_work_sync (int *) ;
 int iscsi_remove_failed_auth_entry (struct iscsi_conn*) ;
 int iscsi_target_do_login (struct iscsi_conn*,struct iscsi_login*) ;
 int iscsi_target_nego_release (struct iscsi_conn*) ;
 int iscsi_target_restore_sock_callbacks (struct iscsi_conn*) ;
 scalar_t__ iscsi_target_sk_check_and_clear (struct iscsi_conn*,int ) ;
 int set_bit (int ,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int iscsi_target_start_negotiation(
 struct iscsi_login *login,
 struct iscsi_conn *conn)
{
 int ret;

 if (conn->sock) {
  struct sock *sk = conn->sock->sk;

  write_lock_bh(&sk->sk_callback_lock);
  set_bit(LOGIN_FLAGS_READY, &conn->login_flags);
  set_bit(LOGIN_FLAGS_INITIAL_PDU, &conn->login_flags);
  write_unlock_bh(&sk->sk_callback_lock);
 }
 ret = iscsi_target_do_login(conn, login);
 if (!ret && iscsi_target_sk_check_and_clear(conn, LOGIN_FLAGS_INITIAL_PDU))
  ret = -1;

 if (ret < 0) {
  cancel_delayed_work_sync(&conn->login_work);
  iscsi_target_restore_sock_callbacks(conn);
  iscsi_remove_failed_auth_entry(conn);
 }
 if (ret != 0)
  iscsi_target_nego_release(conn);

 return ret;
}
