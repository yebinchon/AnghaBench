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
typedef  void* u32 ;
struct iscsi_r2t {int recovery_r2t; int /*<<< orphan*/  r2t_list; void* xfer_len; void* offset; void* r2t_sn; } ;
struct iscsi_cmd {int /*<<< orphan*/  r2t_lock; int /*<<< orphan*/  conn; int /*<<< orphan*/  cmd_r2t_list; int /*<<< orphan*/  r2t_sn; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ISTATE_SEND_R2T ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iscsi_r2t* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lio_r2t_cache ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(
	struct iscsi_cmd *cmd,
	u32 offset,
	u32 xfer_len,
	int recovery,
	u32 r2t_sn)
{
	struct iscsi_r2t *r2t;

	FUNC5(&cmd->r2t_lock);

	FUNC1((s32)xfer_len < 0);

	r2t = FUNC3(lio_r2t_cache, GFP_ATOMIC);
	if (!r2t) {
		FUNC6("Unable to allocate memory for struct iscsi_r2t.\n");
		return -1;
	}
	FUNC0(&r2t->r2t_list);

	r2t->recovery_r2t = recovery;
	r2t->r2t_sn = (!r2t_sn) ? cmd->r2t_sn++ : r2t_sn;
	r2t->offset = offset;
	r2t->xfer_len = xfer_len;
	FUNC4(&r2t->r2t_list, &cmd->cmd_r2t_list);
	FUNC8(&cmd->r2t_lock);

	FUNC2(cmd, cmd->conn, ISTATE_SEND_R2T);

	FUNC7(&cmd->r2t_lock);
	return 0;
}