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
typedef  int /*<<< orphan*/  u8 ;
struct ucsi_ccg {int cmd_resp; int /*<<< orphan*/  flags; struct device* dev; } ;
struct device {int dummy; } ;
struct ccg_cmd {int reg; int /*<<< orphan*/  delay; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_CMD_PENDING ; 
#define  DEV_REG_IDX 128 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct ucsi_ccg*) ; 
 int FUNC1 (struct ucsi_ccg*) ; 
 int FUNC2 (struct ucsi_ccg*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ucsi_ccg *uc, struct ccg_cmd *cmd)
{
	struct device *dev = uc->dev;
	int ret;

	switch (cmd->reg & 0xF000) {
	case DEV_REG_IDX:
		FUNC6(DEV_CMD_PENDING, &uc->flags);
		break;
	default:
		FUNC4(dev, "invalid cmd register\n");
		break;
	}

	ret = FUNC2(uc, cmd->reg, (u8 *)&cmd->data, cmd->len);
	if (ret < 0)
		return ret;

	FUNC5(cmd->delay);

	ret = FUNC1(uc);
	if (ret < 0) {
		FUNC4(dev, "response read error\n");
		switch (cmd->reg & 0xF000) {
		case DEV_REG_IDX:
			FUNC3(DEV_CMD_PENDING, &uc->flags);
			break;
		default:
			FUNC4(dev, "invalid cmd register\n");
			break;
		}
		return -EIO;
	}
	FUNC0(uc);

	return uc->cmd_resp;
}