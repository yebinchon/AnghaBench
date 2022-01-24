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
typedef  int u32 ;
struct cdns3_device {int wait_for_setup; int ep0_data_dir; int /*<<< orphan*/  setup_pending; TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  ep_sts; } ;

/* Variables and functions */
 int EP_STS_DESCMIS ; 
 int EP_STS_IOC ; 
 int EP_STS_ISP ; 
 int EP_STS_SETUP ; 
 int /*<<< orphan*/  FUNC0 (struct cdns3_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns3_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cdns3_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct cdns3_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct cdns3_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cdns3_device*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct cdns3_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 

void FUNC9(struct cdns3_device *priv_dev, int dir)
{
	u32 ep_sts_reg;

	FUNC4(priv_dev, dir);

	ep_sts_reg = FUNC6(&priv_dev->regs->ep_sts);
	FUNC8(ep_sts_reg, &priv_dev->regs->ep_sts);

	FUNC7(priv_dev, ep_sts_reg);

	FUNC0(priv_dev);

	if (ep_sts_reg & EP_STS_SETUP)
		priv_dev->wait_for_setup = 1;

	if (priv_dev->wait_for_setup && ep_sts_reg & EP_STS_IOC) {
		priv_dev->wait_for_setup = 0;
		FUNC1(priv_dev, 0);
		FUNC2(priv_dev);
	} else if ((ep_sts_reg & EP_STS_IOC) || (ep_sts_reg & EP_STS_ISP)) {
		priv_dev->ep0_data_dir = dir;
		FUNC5(priv_dev);
	}

	if (ep_sts_reg & EP_STS_DESCMIS) {
		if (dir == 0 && !priv_dev->setup_pending)
			FUNC3(priv_dev);
	}
}