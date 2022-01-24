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
struct iscsi_cmd {int /*<<< orphan*/  dataout_timeout_lock; int /*<<< orphan*/  conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct iscsi_cmd *cmd)
{
	FUNC0(cmd);

	FUNC2(&cmd->dataout_timeout_lock);
	FUNC1(cmd, cmd->conn);
	FUNC3(&cmd->dataout_timeout_lock);
}