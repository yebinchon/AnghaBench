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
struct tcmu_nl_cmd {int status; int /*<<< orphan*/  cmd; int /*<<< orphan*/  complete; } ;
struct tcmu_dev {scalar_t__ nl_reply_supported; struct tcmu_nl_cmd curr_nl_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCMU_CMD_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  tcmu_kern_cmd_reply_supported ; 
 int /*<<< orphan*/  tcmu_nl_cmd_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct tcmu_dev *udev)
{
	struct tcmu_nl_cmd *nl_cmd = &udev->curr_nl_cmd;
	int ret;

	if (!tcmu_kern_cmd_reply_supported)
		return 0;

	if (udev->nl_reply_supported <= 0)
		return 0;

	FUNC2("sleeping for nl reply\n");
	FUNC3(&nl_cmd->complete);

	FUNC0(&tcmu_nl_cmd_mutex);
	nl_cmd->cmd = TCMU_CMD_UNSPEC;
	ret = nl_cmd->status;
	FUNC1(&tcmu_nl_cmd_mutex);

	return ret;
}