
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_text_rsp {int dummy; } ;
struct iscsi_conn {TYPE_1__* conn_transport; } ;
struct iscsi_cmd {int buf_ptr; scalar_t__ pdu; } ;
struct TYPE_2__ {int (* iscsit_xmit_pdu ) (struct iscsi_conn*,struct iscsi_cmd*,int *,int ,int) ;int transport_type; } ;


 int iscsit_build_text_rsp (struct iscsi_cmd*,struct iscsi_conn*,struct iscsi_text_rsp*,int ) ;
 int stub1 (struct iscsi_conn*,struct iscsi_cmd*,int *,int ,int) ;

__attribute__((used)) static int iscsit_send_text_rsp(
 struct iscsi_cmd *cmd,
 struct iscsi_conn *conn)
{
 struct iscsi_text_rsp *hdr = (struct iscsi_text_rsp *)cmd->pdu;
 int text_length;

 text_length = iscsit_build_text_rsp(cmd, conn, hdr,
    conn->conn_transport->transport_type);
 if (text_length < 0)
  return text_length;

 return conn->conn_transport->iscsit_xmit_pdu(conn, cmd, ((void*)0),
           cmd->buf_ptr,
           text_length);
}
