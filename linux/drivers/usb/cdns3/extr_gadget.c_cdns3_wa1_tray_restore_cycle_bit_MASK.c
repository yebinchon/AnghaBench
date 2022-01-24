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
struct cdns3_endpoint {int wa1_trb_index; } ;
struct cdns3_device {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  ep_cmd; } ;

/* Variables and functions */
 int EP_CMD_DRDY ; 
 int FUNC0 (struct cdns3_device*,struct cdns3_endpoint*) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns3_endpoint*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cdns3_device *priv_dev,
					     struct cdns3_endpoint *priv_ep)
{
	int dma_index;
	u32 doorbell;

	doorbell = !!(FUNC2(&priv_dev->regs->ep_cmd) & EP_CMD_DRDY);
	dma_index = FUNC0(priv_dev, priv_ep);

	if (!doorbell || dma_index != priv_ep->wa1_trb_index)
		FUNC1(priv_ep);
}