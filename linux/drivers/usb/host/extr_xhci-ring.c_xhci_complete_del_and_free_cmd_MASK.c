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
struct xhci_command {scalar_t__ completion; int /*<<< orphan*/  status; int /*<<< orphan*/  cmd_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_command*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct xhci_command *cmd, u32 status)
{
	FUNC2(&cmd->cmd_list);

	if (cmd->completion) {
		cmd->status = status;
		FUNC0(cmd->completion);
	} else {
		FUNC1(cmd);
	}
}