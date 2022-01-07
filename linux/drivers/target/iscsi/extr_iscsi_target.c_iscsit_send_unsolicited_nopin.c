
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_nopin {int ttt; } ;
struct iscsi_conn {TYPE_1__* conn_transport; int cid; } ;
struct iscsi_cmd {int istate_lock; int i_state; int stat_sn; int * pdu; } ;
struct TYPE_2__ {int (* iscsit_xmit_pdu ) (struct iscsi_conn*,struct iscsi_cmd*,int *,int *,int ) ;} ;


 int ISTATE_SENT_NOPIN_WANT_RESPONSE ;
 int ISTATE_SENT_STATUS ;
 int iscsit_build_nopin_rsp (struct iscsi_cmd*,struct iscsi_conn*,struct iscsi_nopin*,int) ;
 int pr_debug (char*,int ,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct iscsi_conn*,struct iscsi_cmd*,int *,int *,int ) ;

__attribute__((used)) static int iscsit_send_unsolicited_nopin(
 struct iscsi_cmd *cmd,
 struct iscsi_conn *conn,
 int want_response)
{
 struct iscsi_nopin *hdr = (struct iscsi_nopin *)&cmd->pdu[0];
 int ret;

 iscsit_build_nopin_rsp(cmd, conn, hdr, 0);

 pr_debug("Sending Unsolicited NOPIN TTT: 0x%08x StatSN:"
  " 0x%08x CID: %hu\n", hdr->ttt, cmd->stat_sn, conn->cid);

 ret = conn->conn_transport->iscsit_xmit_pdu(conn, cmd, ((void*)0), ((void*)0), 0);
 if (ret < 0)
  return ret;

 spin_lock_bh(&cmd->istate_lock);
 cmd->i_state = want_response ?
  ISTATE_SENT_NOPIN_WANT_RESPONSE : ISTATE_SENT_STATUS;
 spin_unlock_bh(&cmd->istate_lock);

 return 0;
}
