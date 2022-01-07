
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_np {int dummy; } ;
struct iscsi_login {int zero_tsih; struct iscsi_np* np; } ;
struct iscsi_conn {int dummy; } ;


 int iscsi_remove_failed_auth_entry (struct iscsi_conn*) ;
 int iscsi_target_login_sess_out (struct iscsi_conn*,struct iscsi_np*,int,int) ;
 int iscsi_target_nego_release (struct iscsi_conn*) ;

__attribute__((used)) static void iscsi_target_login_drop(struct iscsi_conn *conn, struct iscsi_login *login)
{
 struct iscsi_np *np = login->np;
 bool zero_tsih = login->zero_tsih;

 iscsi_remove_failed_auth_entry(conn);
 iscsi_target_nego_release(conn);
 iscsi_target_login_sess_out(conn, np, zero_tsih, 1);
}
