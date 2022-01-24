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
struct tegra_xusb_mbox_msg {int /*<<< orphan*/  cmd; } ;
struct tegra_xusb {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MBOX_DEST_SMI ; 
 int /*<<< orphan*/  MBOX_OWNER_NONE ; 
 int /*<<< orphan*/  XUSB_CFG_ARU_MBOX_CMD ; 
 int /*<<< orphan*/  XUSB_CFG_ARU_MBOX_DATA_OUT ; 
 int /*<<< orphan*/  XUSB_CFG_ARU_MBOX_OWNER ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_xusb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_xusb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_xusb*,struct tegra_xusb_mbox_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_xusb_mbox_msg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct tegra_xusb *tegra = data;
	struct tegra_xusb_mbox_msg msg;
	u32 value;

	FUNC2(&tegra->lock);

	value = FUNC0(tegra, XUSB_CFG_ARU_MBOX_DATA_OUT);
	FUNC6(&msg, value);

	value = FUNC0(tegra, XUSB_CFG_ARU_MBOX_CMD);
	value &= ~MBOX_DEST_SMI;
	FUNC1(tegra, value, XUSB_CFG_ARU_MBOX_CMD);

	/* clear mailbox owner if no ACK/NAK is required */
	if (!FUNC4(msg.cmd))
		FUNC1(tegra, MBOX_OWNER_NONE, XUSB_CFG_ARU_MBOX_OWNER);

	FUNC5(tegra, &msg);

	FUNC3(&tegra->lock);
	return IRQ_HANDLED;
}