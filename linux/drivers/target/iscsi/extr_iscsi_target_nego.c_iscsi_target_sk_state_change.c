
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_callback_lock; struct iscsi_conn* sk_user_data; } ;
struct iscsi_conn {void (* orig_state_change ) (struct sock*) ;int login_work; int login_flags; } ;


 int LOGIN_FLAGS_CLOSED ;
 int LOGIN_FLAGS_INITIAL_PDU ;
 int LOGIN_FLAGS_READY ;
 int LOGIN_FLAGS_READ_ACTIVE ;
 int __iscsi_target_sk_check_close (struct sock*) ;
 int pr_debug (char*,...) ;
 int schedule_delayed_work (int *,int ) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void iscsi_target_sk_state_change(struct sock *sk)
{
 struct iscsi_conn *conn;
 void (*orig_state_change)(struct sock *);
 bool state;

 pr_debug("Entering iscsi_target_sk_state_change\n");

 write_lock_bh(&sk->sk_callback_lock);
 conn = sk->sk_user_data;
 if (!conn) {
  write_unlock_bh(&sk->sk_callback_lock);
  return;
 }
 orig_state_change = conn->orig_state_change;

 if (!test_bit(LOGIN_FLAGS_READY, &conn->login_flags)) {
  pr_debug("Got LOGIN_FLAGS_READY=0 sk_state_change conn: %p\n",
    conn);
  write_unlock_bh(&sk->sk_callback_lock);
  orig_state_change(sk);
  return;
 }
 state = __iscsi_target_sk_check_close(sk);
 pr_debug("__iscsi_target_sk_close_change: state: %d\n", state);

 if (test_bit(LOGIN_FLAGS_READ_ACTIVE, &conn->login_flags)) {
  pr_debug("Got LOGIN_FLAGS_READ_ACTIVE=1 sk_state_change"
    " conn: %p\n", conn);
  if (state)
   set_bit(LOGIN_FLAGS_CLOSED, &conn->login_flags);
  write_unlock_bh(&sk->sk_callback_lock);
  orig_state_change(sk);
  return;
 }
 if (test_bit(LOGIN_FLAGS_CLOSED, &conn->login_flags)) {
  pr_debug("Got LOGIN_FLAGS_CLOSED=1 sk_state_change conn: %p\n",
    conn);
  write_unlock_bh(&sk->sk_callback_lock);
  orig_state_change(sk);
  return;
 }
 if (state) {
  pr_debug("iscsi_target_sk_state_change got failed state\n");
  set_bit(LOGIN_FLAGS_CLOSED, &conn->login_flags);
  state = test_bit(LOGIN_FLAGS_INITIAL_PDU, &conn->login_flags);
  write_unlock_bh(&sk->sk_callback_lock);

  orig_state_change(sk);

  if (!state)
   schedule_delayed_work(&conn->login_work, 0);
  return;
 }
 write_unlock_bh(&sk->sk_callback_lock);

 orig_state_change(sk);
}
