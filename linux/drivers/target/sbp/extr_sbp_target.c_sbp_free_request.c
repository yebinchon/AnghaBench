
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {int dummy; } ;
struct se_cmd {struct se_session* se_sess; } ;
struct sbp_target_request {int cmd_buf; int pg_tbl; struct se_cmd se_cmd; } ;


 int kfree (int ) ;
 int target_free_tag (struct se_session*,struct se_cmd*) ;

__attribute__((used)) static void sbp_free_request(struct sbp_target_request *req)
{
 struct se_cmd *se_cmd = &req->se_cmd;
 struct se_session *se_sess = se_cmd->se_sess;

 kfree(req->pg_tbl);
 kfree(req->cmd_buf);

 target_free_tag(se_sess, se_cmd);
}
