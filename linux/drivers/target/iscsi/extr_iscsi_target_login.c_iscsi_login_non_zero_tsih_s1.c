
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_login_req {int cid; } ;
struct iscsi_conn {int dummy; } ;


 int iscsi_login_set_conn_values (int *,struct iscsi_conn*,int ) ;

__attribute__((used)) static int iscsi_login_non_zero_tsih_s1(
 struct iscsi_conn *conn,
 unsigned char *buf)
{
 struct iscsi_login_req *pdu = (struct iscsi_login_req *)buf;

 return iscsi_login_set_conn_values(((void*)0), conn, pdu->cid);
}
