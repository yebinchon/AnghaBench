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
typedef  int u32 ;
struct tegra_xusb_mbox_msg {scalar_t__ cmd; } ;
struct tegra_xusb {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ETIMEDOUT ; 
 scalar_t__ MBOX_CMD_ACK ; 
 scalar_t__ MBOX_CMD_NAK ; 
 int MBOX_DEST_FALC ; 
 int MBOX_INT_EN ; 
 int MBOX_OWNER_NONE ; 
 int MBOX_OWNER_SW ; 
 int /*<<< orphan*/  XUSB_CFG_ARU_MBOX_CMD ; 
 int /*<<< orphan*/  XUSB_CFG_ARU_MBOX_DATA_IN ; 
 int /*<<< orphan*/  XUSB_CFG_ARU_MBOX_OWNER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct tegra_xusb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_xusb*,int,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC3 (int) ; 
 int FUNC4 (struct tegra_xusb_mbox_msg const*) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct tegra_xusb *tegra,
				const struct tegra_xusb_mbox_msg *msg)
{
	bool wait_for_idle = false;
	u32 value;

	/*
	 * Acquire the mailbox. The firmware still owns the mailbox for
	 * ACK/NAK messages.
	 */
	if (!(msg->cmd == MBOX_CMD_ACK || msg->cmd == MBOX_CMD_NAK)) {
		value = FUNC1(tegra, XUSB_CFG_ARU_MBOX_OWNER);
		if (value != MBOX_OWNER_NONE) {
			FUNC0(tegra->dev, "mailbox is busy\n");
			return -EBUSY;
		}

		FUNC2(tegra, MBOX_OWNER_SW, XUSB_CFG_ARU_MBOX_OWNER);

		value = FUNC1(tegra, XUSB_CFG_ARU_MBOX_OWNER);
		if (value != MBOX_OWNER_SW) {
			FUNC0(tegra->dev, "failed to acquire mailbox\n");
			return -EBUSY;
		}

		wait_for_idle = true;
	}

	value = FUNC4(msg);
	FUNC2(tegra, value, XUSB_CFG_ARU_MBOX_DATA_IN);

	value = FUNC1(tegra, XUSB_CFG_ARU_MBOX_CMD);
	value |= MBOX_INT_EN | MBOX_DEST_FALC;
	FUNC2(tegra, value, XUSB_CFG_ARU_MBOX_CMD);

	if (wait_for_idle) {
		unsigned long timeout = jiffies + FUNC3(250);

		while (FUNC6(jiffies, timeout)) {
			value = FUNC1(tegra, XUSB_CFG_ARU_MBOX_OWNER);
			if (value == MBOX_OWNER_NONE)
				break;

			FUNC7(10, 20);
		}

		if (FUNC5(jiffies, timeout))
			value = FUNC1(tegra, XUSB_CFG_ARU_MBOX_OWNER);

		if (value != MBOX_OWNER_NONE)
			return -ETIMEDOUT;
	}

	return 0;
}