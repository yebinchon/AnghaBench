
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_nopin {int dummy; } ;
struct iscsi_conn {TYPE_1__* conn_transport; } ;
struct iscsi_cmd {int buf_ptr_size; int buf_ptr; int * pdu; } ;
struct TYPE_2__ {int (* iscsit_xmit_pdu ) (struct iscsi_conn*,struct iscsi_cmd*,int *,int ,int ) ;} ;


 int iscsit_build_nopin_rsp (struct iscsi_cmd*,struct iscsi_conn*,struct iscsi_nopin*,int) ;
 int pr_debug (char*,int ) ;
 int stub1 (struct iscsi_conn*,struct iscsi_cmd*,int *,int ,int ) ;

__attribute__((used)) static int
iscsit_send_nopin(struct iscsi_cmd *cmd, struct iscsi_conn *conn)
{
 struct iscsi_nopin *hdr = (struct iscsi_nopin *)&cmd->pdu[0];

 iscsit_build_nopin_rsp(cmd, conn, hdr, 1);





 pr_debug("Echoing back %u bytes of ping data.\n", cmd->buf_ptr_size);

 return conn->conn_transport->iscsit_xmit_pdu(conn, cmd, ((void*)0),
           cmd->buf_ptr,
           cmd->buf_ptr_size);
}
