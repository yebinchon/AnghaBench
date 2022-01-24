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
typedef  scalar_t__ u8 ;
struct cdns3_endpoint {int /*<<< orphan*/  name; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  ep_traddr; int /*<<< orphan*/  ep_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP_CMD_DRDY ; 
 int /*<<< orphan*/  FUNC0 (struct cdns3_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns3_endpoint*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cdns3_endpoint*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct cdns3_endpoint *priv_ep, u8 rearm)
{
	struct cdns3_device *priv_dev = priv_ep->cdns3_dev;

	FUNC1(priv_ep);

	if (rearm) {
		FUNC4(priv_ep);

		/* Cycle Bit must be updated before arming DMA. */
		FUNC5();
		FUNC6(EP_CMD_DRDY, &priv_dev->regs->ep_cmd);

		FUNC0(priv_dev);

		FUNC3(priv_ep->name,
					 FUNC2(&priv_dev->regs->ep_traddr));
	}
}