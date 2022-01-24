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
struct ucsi_ccg {int port_num; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;
struct ccg_cmd {int data; int len; int delay; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCGX_RAB_PDPORT_ENABLE ; 
 int CMD_SUCCESS ; 
 int PDPORT_1 ; 
 int PDPORT_2 ; 
 int FUNC0 (struct ucsi_ccg*,struct ccg_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ucsi_ccg *uc, bool enable)
{
	struct ccg_cmd cmd;
	int ret;

	cmd.reg = CCGX_RAB_PDPORT_ENABLE;
	if (enable)
		cmd.data = (uc->port_num == 1) ?
			    PDPORT_1 : (PDPORT_1 | PDPORT_2);
	else
		cmd.data = 0x0;
	cmd.len = 1;
	cmd.delay = 10;

	FUNC2(&uc->lock);

	ret = FUNC0(uc, &cmd);

	FUNC3(&uc->lock);

	if (ret != CMD_SUCCESS) {
		FUNC1(uc->dev, "port control failed ret=%d\n", ret);
		return ret;
	}
	return 0;
}