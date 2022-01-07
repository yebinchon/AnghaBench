
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_session {int queued_cmdsn; int cmdsn; int max_cmdsn; int exp_cmdsn; } ;
struct iscsi_conn {struct iscsi_session* session; } ;


 int ENOSPC ;
 int ISCSI_DBG_SESSION (struct iscsi_session*,char*,int ,int ,int ,int ) ;
 int iscsi_sna_lte (int ,int ) ;

__attribute__((used)) static int iscsi_check_cmdsn_window_closed(struct iscsi_conn *conn)
{
 struct iscsi_session *session = conn->session;




 if (!iscsi_sna_lte(session->queued_cmdsn, session->max_cmdsn)) {
  ISCSI_DBG_SESSION(session, "iSCSI CmdSN closed. ExpCmdSn "
      "%u MaxCmdSN %u CmdSN %u/%u\n",
      session->exp_cmdsn, session->max_cmdsn,
      session->cmdsn, session->queued_cmdsn);
  return -ENOSPC;
 }
 return 0;
}
