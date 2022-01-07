
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_datain_req {int dummy; } ;
struct iscsi_conn {int dummy; } ;
struct iscsi_cmd {int dummy; } ;


 int cxgbit_xmit_datain_pdu (struct iscsi_conn*,struct iscsi_cmd*,struct iscsi_datain_req*,void const*) ;
 int cxgbit_xmit_nondatain_pdu (struct iscsi_conn*,struct iscsi_cmd*,void const*,int ) ;

int
cxgbit_xmit_pdu(struct iscsi_conn *conn, struct iscsi_cmd *cmd,
  struct iscsi_datain_req *dr, const void *buf, u32 buf_len)
{
 if (dr)
  return cxgbit_xmit_datain_pdu(conn, cmd, dr, buf);
 else
  return cxgbit_xmit_nondatain_pdu(conn, cmd, buf, buf_len);
}
