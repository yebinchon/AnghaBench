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
struct sdw_cdns {int /*<<< orphan*/  dev; int /*<<< orphan*/  tx_complete; TYPE_1__* defer; int /*<<< orphan*/  link_up; } ;
typedef  int irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  complete; int /*<<< orphan*/  length; int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDNS_MCP_INTMASK ; 
 int /*<<< orphan*/  CDNS_MCP_INTSTAT ; 
 int CDNS_MCP_INT_CTRL_CLASH ; 
 int CDNS_MCP_INT_DATA_CLASH ; 
 int CDNS_MCP_INT_IRQ ; 
 int CDNS_MCP_INT_PARITY ; 
 int CDNS_MCP_INT_RX_WL ; 
 int CDNS_MCP_INT_SLAVE_MASK ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (struct sdw_cdns*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdw_cdns*) ; 
 int FUNC2 (struct sdw_cdns*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdw_cdns*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdw_cdns*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct sdw_cdns *cdns = dev_id;
	u32 int_status;
	int ret = IRQ_HANDLED;

	/* Check if the link is up */
	if (!cdns->link_up)
		return IRQ_NONE;

	int_status = FUNC2(cdns, CDNS_MCP_INTSTAT);

	if (!(int_status & CDNS_MCP_INT_IRQ))
		return IRQ_NONE;

	if (int_status & CDNS_MCP_INT_RX_WL) {
		FUNC1(cdns);

		if (cdns->defer) {
			FUNC0(cdns, cdns->defer->msg,
					   cdns->defer->length, 0);
			FUNC5(&cdns->defer->complete);
			cdns->defer = NULL;
		} else {
			FUNC5(&cdns->tx_complete);
		}
	}

	if (int_status & CDNS_MCP_INT_PARITY) {
		/* Parity error detected by Master */
		FUNC6(cdns->dev, "Parity error\n");
	}

	if (int_status & CDNS_MCP_INT_CTRL_CLASH) {
		/* Slave is driving bit slot during control word */
		FUNC6(cdns->dev, "Bus clash for control word\n");
	}

	if (int_status & CDNS_MCP_INT_DATA_CLASH) {
		/*
		 * Multiple slaves trying to drive bit slot, or issue with
		 * ownership of data bits or Slave gone bonkers
		 */
		FUNC6(cdns->dev, "Bus clash for data word\n");
	}

	if (int_status & CDNS_MCP_INT_SLAVE_MASK) {
		/* Mask the Slave interrupt and wake thread */
		FUNC3(cdns, CDNS_MCP_INTMASK,
			     CDNS_MCP_INT_SLAVE_MASK, 0);

		int_status &= ~CDNS_MCP_INT_SLAVE_MASK;
		ret = IRQ_WAKE_THREAD;
	}

	FUNC4(cdns, CDNS_MCP_INTSTAT, int_status);
	return ret;
}