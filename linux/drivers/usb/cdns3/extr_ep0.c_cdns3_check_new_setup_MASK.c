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
struct cdns3_device {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  ep_sts; } ;

/* Variables and functions */
 int EP_STS_SETUP ; 
 int EP_STS_STPWAIT ; 
 int USB_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (struct cdns3_device*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct cdns3_device *priv_dev)
{
	u32 ep_sts_reg;

	FUNC0(priv_dev, 0 | USB_DIR_OUT);
	ep_sts_reg = FUNC1(&priv_dev->regs->ep_sts);

	return !!(ep_sts_reg & (EP_STS_SETUP | EP_STS_STPWAIT));
}