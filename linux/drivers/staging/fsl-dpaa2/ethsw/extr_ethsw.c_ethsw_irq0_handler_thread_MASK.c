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
struct ethsw_core {int /*<<< orphan*/  dpsw_handle; int /*<<< orphan*/  mc_io; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DPSW_IRQ_EVENT_LINK_CHANGED ; 
 int /*<<< orphan*/  DPSW_IRQ_INDEX_IF ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct ethsw_core* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ethsw_core*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq_num, void *arg)
{
	struct device *dev = (struct device *)arg;
	struct ethsw_core *ethsw = FUNC1(dev);

	/* Mask the events and the if_id reserved bits to be cleared on read */
	u32 status = DPSW_IRQ_EVENT_LINK_CHANGED | 0xFFFF0000;
	int err;

	err = FUNC3(ethsw->mc_io, 0, ethsw->dpsw_handle,
				  DPSW_IRQ_INDEX_IF, &status);
	if (err) {
		FUNC0(dev, "Can't get irq status (err %d)\n", err);

		err = FUNC2(ethsw->mc_io, 0, ethsw->dpsw_handle,
					    DPSW_IRQ_INDEX_IF, 0xFFFFFFFF);
		if (err)
			FUNC0(dev, "Can't clear irq status (err %d)\n", err);
		goto out;
	}

	if (status & DPSW_IRQ_EVENT_LINK_CHANGED)
		FUNC4(ethsw);

out:
	return IRQ_HANDLED;
}