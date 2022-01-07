
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct se_session {scalar_t__ sess_cmd_map; int sess_tag_pool; } ;
struct ft_sess {TYPE_2__* tport; struct se_session* se_sess; } ;
struct TYPE_6__ {int map_tag; int map_cpu; } ;
struct ft_cmd {int work; struct fc_frame* req_frame; TYPE_3__ se_cmd; int seq; struct ft_sess* sess; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;
struct TYPE_5__ {TYPE_1__* tpg; struct fc_lport* lport; } ;
struct TYPE_4__ {int workqueue; } ;


 int INIT_WORK (int *,int ) ;
 int SAM_STAT_BUSY ;
 int fc_frame_free (struct fc_frame*) ;
 int fc_seq_assign (struct fc_lport*,struct fc_frame*) ;
 int ft_send_resp_status (struct fc_lport*,struct fc_frame*,int ,int ) ;
 int ft_send_work ;
 int ft_sess_put (struct ft_sess*) ;
 int memset (struct ft_cmd*,int ,int) ;
 int pr_debug (char*) ;
 int queue_work (int ,int *) ;
 int sbitmap_queue_get (int *,int*) ;
 int target_free_tag (struct se_session*,TYPE_3__*) ;

__attribute__((used)) static void ft_recv_cmd(struct ft_sess *sess, struct fc_frame *fp)
{
 struct ft_cmd *cmd;
 struct fc_lport *lport = sess->tport->lport;
 struct se_session *se_sess = sess->se_sess;
 int tag, cpu;

 tag = sbitmap_queue_get(&se_sess->sess_tag_pool, &cpu);
 if (tag < 0)
  goto busy;

 cmd = &((struct ft_cmd *)se_sess->sess_cmd_map)[tag];
 memset(cmd, 0, sizeof(struct ft_cmd));

 cmd->se_cmd.map_tag = tag;
 cmd->se_cmd.map_cpu = cpu;
 cmd->sess = sess;
 cmd->seq = fc_seq_assign(lport, fp);
 if (!cmd->seq) {
  target_free_tag(se_sess, &cmd->se_cmd);
  goto busy;
 }
 cmd->req_frame = fp;

 INIT_WORK(&cmd->work, ft_send_work);
 queue_work(sess->tport->tpg->workqueue, &cmd->work);
 return;

busy:
 pr_debug("cmd or seq allocation failure - sending BUSY\n");
 ft_send_resp_status(lport, fp, SAM_STAT_BUSY, 0);
 fc_frame_free(fp);
 ft_sess_put(sess);
}
