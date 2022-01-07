
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iscsi_conn {int dummy; } ;


 int ISCSI_LOGIN_STATUS_NO_VERSION ;
 int ISCSI_STATUS_CLS_INITIATOR_ERR ;
 int iscsit_tx_login_rsp (struct iscsi_conn*,int ,int ) ;
 int pr_err (char*,int,int) ;

__attribute__((used)) static int iscsi_login_check_initiator_version(
 struct iscsi_conn *conn,
 u8 version_max,
 u8 version_min)
{
 if ((version_max != 0x00) || (version_min != 0x00)) {
  pr_err("Unsupported iSCSI IETF Pre-RFC Revision,"
   " version Min/Max 0x%02x/0x%02x, rejecting login.\n",
   version_min, version_max);
  iscsit_tx_login_rsp(conn, ISCSI_STATUS_CLS_INITIATOR_ERR,
    ISCSI_LOGIN_STATUS_NO_VERSION);
  return -1;
 }

 return 0;
}
