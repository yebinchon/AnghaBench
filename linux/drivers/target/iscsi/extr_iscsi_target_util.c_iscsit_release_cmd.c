
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct se_cmd {int dummy; } ;
struct iscsi_session {int se_sess; } ;
struct iscsi_cmd {int text_in_ptr; int iov_data; int overflow_buf; int tmr_req; int seq_list; int pdu_list; int buf_ptr; struct iscsi_session* sess; TYPE_1__* conn; int i_conn_node; struct se_cmd se_cmd; } ;
struct TYPE_2__ {struct iscsi_session* sess; } ;


 int BUG_ON (int) ;
 int WARN_ON (int) ;
 int kfree (int ) ;
 int list_empty (int *) ;
 int target_free_tag (int ,struct se_cmd*) ;

void iscsit_release_cmd(struct iscsi_cmd *cmd)
{
 struct iscsi_session *sess;
 struct se_cmd *se_cmd = &cmd->se_cmd;

 WARN_ON(!list_empty(&cmd->i_conn_node));

 if (cmd->conn)
  sess = cmd->conn->sess;
 else
  sess = cmd->sess;

 BUG_ON(!sess || !sess->se_sess);

 kfree(cmd->buf_ptr);
 kfree(cmd->pdu_list);
 kfree(cmd->seq_list);
 kfree(cmd->tmr_req);
 kfree(cmd->overflow_buf);
 kfree(cmd->iov_data);
 kfree(cmd->text_in_ptr);

 target_free_tag(sess->se_sess, se_cmd);
}
