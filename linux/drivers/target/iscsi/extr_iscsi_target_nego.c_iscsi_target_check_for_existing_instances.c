
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_login {int checked_for_existing; int initial_exp_statsn; int cid; int tsih; } ;
struct iscsi_conn {int dummy; } ;


 int iscsi_check_for_session_reinstatement (struct iscsi_conn*) ;
 int iscsi_login_post_auth_non_zero_tsih (struct iscsi_conn*,int ,int ) ;

__attribute__((used)) static int iscsi_target_check_for_existing_instances(
 struct iscsi_conn *conn,
 struct iscsi_login *login)
{
 if (login->checked_for_existing)
  return 0;

 login->checked_for_existing = 1;

 if (!login->tsih)
  return iscsi_check_for_session_reinstatement(conn);
 else
  return iscsi_login_post_auth_non_zero_tsih(conn, login->cid,
    login->initial_exp_statsn);
}
