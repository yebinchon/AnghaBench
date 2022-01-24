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
struct timer_list {int dummy; } ;
struct tcmu_dev {int /*<<< orphan*/  name; int /*<<< orphan*/  commands; } ;
struct tcmu_cmd {int cmd_id; int /*<<< orphan*/  deadline; struct tcmu_dev* tcmu_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOWAIT ; 
 unsigned int MSEC_PER_SEC ; 
 int /*<<< orphan*/  USHRT_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *,struct tcmu_cmd*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct timer_list*) ; 

__attribute__((used)) static int FUNC7(struct tcmu_cmd *tcmu_cmd, unsigned int tmo,
				struct timer_list *timer)
{
	struct tcmu_dev *udev = tcmu_cmd->tcmu_dev;
	int cmd_id;

	if (tcmu_cmd->cmd_id)
		goto setup_timer;

	cmd_id = FUNC0(&udev->commands, tcmu_cmd, 1, USHRT_MAX, GFP_NOWAIT);
	if (cmd_id < 0) {
		FUNC4("tcmu: Could not allocate cmd id.\n");
		return cmd_id;
	}
	tcmu_cmd->cmd_id = cmd_id;

	FUNC3("allocated cmd %u for dev %s tmo %lu\n", tcmu_cmd->cmd_id,
		 udev->name, tmo / MSEC_PER_SEC);

setup_timer:
	if (!tmo)
		return 0;

	tcmu_cmd->deadline = FUNC5(jiffies + FUNC2(tmo));
	if (!FUNC6(timer))
		FUNC1(timer, tcmu_cmd->deadline);

	return 0;
}