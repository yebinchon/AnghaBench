
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_reject {int reason; int statsn; } ;
struct iscsi_conn {TYPE_1__* conn_transport; int cid; } ;
struct iscsi_cmd {int buf_ptr; int * pdu; } ;
struct TYPE_2__ {int (* iscsit_xmit_pdu ) (struct iscsi_conn*,struct iscsi_cmd*,int *,int ,int ) ;} ;


 int ISCSI_HDR_LEN ;
 int iscsit_build_reject (struct iscsi_cmd*,struct iscsi_conn*,struct iscsi_reject*) ;
 int ntohl (int ) ;
 int pr_debug (char*,int ,int ,int ) ;
 int stub1 (struct iscsi_conn*,struct iscsi_cmd*,int *,int ,int ) ;

__attribute__((used)) static int iscsit_send_reject(
 struct iscsi_cmd *cmd,
 struct iscsi_conn *conn)
{
 struct iscsi_reject *hdr = (struct iscsi_reject *)&cmd->pdu[0];

 iscsit_build_reject(cmd, conn, hdr);

 pr_debug("Built Reject PDU StatSN: 0x%08x, Reason: 0x%02x,"
  " CID: %hu\n", ntohl(hdr->statsn), hdr->reason, conn->cid);

 return conn->conn_transport->iscsit_xmit_pdu(conn, cmd, ((void*)0),
           cmd->buf_ptr,
           ISCSI_HDR_LEN);
}
