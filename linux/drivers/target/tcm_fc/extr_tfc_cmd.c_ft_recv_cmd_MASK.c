#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct se_session {scalar_t__ sess_cmd_map; int /*<<< orphan*/  sess_tag_pool; } ;
struct ft_sess {TYPE_2__* tport; struct se_session* se_sess; } ;
struct TYPE_6__ {int map_tag; int map_cpu; } ;
struct ft_cmd {int /*<<< orphan*/  work; struct fc_frame* req_frame; TYPE_3__ se_cmd; int /*<<< orphan*/  seq; struct ft_sess* sess; } ;
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;
struct TYPE_5__ {TYPE_1__* tpg; struct fc_lport* lport; } ;
struct TYPE_4__ {int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAM_STAT_BUSY ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_lport*,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ft_send_work ; 
 int /*<<< orphan*/  FUNC4 (struct ft_sess*) ; 
 int /*<<< orphan*/  FUNC5 (struct ft_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct se_session*,TYPE_3__*) ; 

__attribute__((used)) static void FUNC10(struct ft_sess *sess, struct fc_frame *fp)
{
	struct ft_cmd *cmd;
	struct fc_lport *lport = sess->tport->lport;
	struct se_session *se_sess = sess->se_sess;
	int tag, cpu;

	tag = FUNC8(&se_sess->sess_tag_pool, &cpu);
	if (tag < 0)
		goto busy;

	cmd = &((struct ft_cmd *)se_sess->sess_cmd_map)[tag];
	FUNC5(cmd, 0, sizeof(struct ft_cmd));

	cmd->se_cmd.map_tag = tag;
	cmd->se_cmd.map_cpu = cpu;
	cmd->sess = sess;
	cmd->seq = FUNC2(lport, fp);
	if (!cmd->seq) {
		FUNC9(se_sess, &cmd->se_cmd);
		goto busy;
	}
	cmd->req_frame = fp;		/* hold frame during cmd */

	FUNC0(&cmd->work, ft_send_work);
	FUNC7(sess->tport->tpg->workqueue, &cmd->work);
	return;

busy:
	FUNC6("cmd or seq allocation failure - sending BUSY\n");
	FUNC3(lport, fp, SAM_STAT_BUSY, 0);
	FUNC1(fp);
	FUNC4(sess);		/* undo get from lookup */
}