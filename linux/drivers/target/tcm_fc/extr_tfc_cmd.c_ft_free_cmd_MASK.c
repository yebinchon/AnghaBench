#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ft_sess {int /*<<< orphan*/  se_sess; } ;
struct ft_cmd {int /*<<< orphan*/  se_cmd; struct fc_frame* req_frame; struct ft_sess* sess; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct ft_sess*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ft_cmd *cmd)
{
	struct fc_frame *fp;
	struct ft_sess *sess;

	if (!cmd)
		return;
	sess = cmd->sess;
	fp = cmd->req_frame;
	if (FUNC2(fp))
		FUNC1(FUNC2(fp));
	FUNC0(fp);
	FUNC4(sess->se_sess, &cmd->se_cmd);
	FUNC3(sess);	/* undo get from lookup at recv */
}