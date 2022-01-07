
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_logout_rsp {int dummy; } ;
struct iscsi_conn {TYPE_1__* conn_transport; } ;
struct iscsi_cmd {int * pdu; } ;
struct TYPE_2__ {int (* iscsit_xmit_pdu ) (struct iscsi_conn*,struct iscsi_cmd*,int *,int *,int ) ;} ;


 int iscsit_build_logout_rsp (struct iscsi_cmd*,struct iscsi_conn*,struct iscsi_logout_rsp*) ;
 int stub1 (struct iscsi_conn*,struct iscsi_cmd*,int *,int *,int ) ;

__attribute__((used)) static int
iscsit_send_logout(struct iscsi_cmd *cmd, struct iscsi_conn *conn)
{
 int rc;

 rc = iscsit_build_logout_rsp(cmd, conn,
   (struct iscsi_logout_rsp *)&cmd->pdu[0]);
 if (rc < 0)
  return rc;

 return conn->conn_transport->iscsit_xmit_pdu(conn, cmd, ((void*)0), ((void*)0), 0);
}
