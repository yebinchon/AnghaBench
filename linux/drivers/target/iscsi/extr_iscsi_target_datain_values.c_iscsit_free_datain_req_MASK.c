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
struct iscsi_datain_req {int /*<<< orphan*/  cmd_datain_node; } ;
struct iscsi_cmd {int /*<<< orphan*/  datain_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct iscsi_datain_req*) ; 
 int /*<<< orphan*/  lio_dr_cache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct iscsi_cmd *cmd, struct iscsi_datain_req *dr)
{
	FUNC2(&cmd->datain_lock);
	FUNC1(&dr->cmd_datain_node);
	FUNC3(&cmd->datain_lock);

	FUNC0(lio_dr_cache, dr);
}