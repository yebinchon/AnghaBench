#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int code; } ;
struct ucsi_ccg {int cmd_resp; TYPE_1__ dev_resp; int /*<<< orphan*/  flags; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ASYNC_EVENT ; 
 int /*<<< orphan*/  DEV_CMD_PENDING ; 
 int RESET_COMPLETE ; 
 int /*<<< orphan*/  RESET_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ucsi_ccg*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ucsi_ccg *uc)
{
	struct device *dev = uc->dev;

	if (uc->dev_resp.code & ASYNC_EVENT) {
		if (uc->dev_resp.code == RESET_COMPLETE) {
			if (FUNC4(RESET_PENDING, &uc->flags))
				uc->cmd_resp = uc->dev_resp.code;
			FUNC2(uc);
		}
		if (FUNC3(uc->dev_resp.code))
			FUNC1(dev, "invalid async evt %d\n",
				uc->dev_resp.code);
	} else {
		if (FUNC4(DEV_CMD_PENDING, &uc->flags)) {
			uc->cmd_resp = uc->dev_resp.code;
			FUNC0(DEV_CMD_PENDING, &uc->flags);
		} else {
			FUNC1(dev, "dev resp 0x%04x but no cmd pending\n",
				uc->dev_resp.code);
		}
	}
}