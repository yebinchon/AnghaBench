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
typedef  int /*<<< orphan*/  u32 ;
struct iscsi_r2t {int seq_complete; } ;
struct iscsi_cmd {int /*<<< orphan*/  r2t_lock; int /*<<< orphan*/  outstanding_r2ts; scalar_t__ unsolicited_data; } ;

/* Variables and functions */
 struct iscsi_r2t* FUNC0 (struct iscsi_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct iscsi_cmd *cmd, u32 offset, u32 length)
{
	struct iscsi_r2t *r2t;

	if (cmd->unsolicited_data)
		return 0;

	r2t = FUNC0(cmd, offset, length);
	if (!r2t)
		return -1;

	FUNC1(&cmd->r2t_lock);
	r2t->seq_complete = 1;
	cmd->outstanding_r2ts--;
	FUNC2(&cmd->r2t_lock);

	return 0;
}