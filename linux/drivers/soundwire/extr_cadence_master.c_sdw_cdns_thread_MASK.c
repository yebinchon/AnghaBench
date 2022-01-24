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
struct sdw_cdns {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CDNS_MCP_INTMASK ; 
 int /*<<< orphan*/  CDNS_MCP_INTSTAT ; 
 int /*<<< orphan*/  CDNS_MCP_INT_SLAVE_MASK ; 
 int /*<<< orphan*/  CDNS_MCP_SLAVE_INTSTAT0 ; 
 int /*<<< orphan*/  CDNS_MCP_SLAVE_INTSTAT1 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct sdw_cdns*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sdw_cdns*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdw_cdns*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdw_cdns*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct sdw_cdns *cdns = dev_id;
	u32 slave0, slave1;

	FUNC4(cdns->dev, "Slave status change\n");

	slave0 = FUNC0(cdns, CDNS_MCP_SLAVE_INTSTAT0);
	slave1 = FUNC0(cdns, CDNS_MCP_SLAVE_INTSTAT1);

	FUNC1(cdns, slave0, slave1);
	FUNC3(cdns, CDNS_MCP_SLAVE_INTSTAT0, slave0);
	FUNC3(cdns, CDNS_MCP_SLAVE_INTSTAT1, slave1);

	/* clear and unmask Slave interrupt now */
	FUNC3(cdns, CDNS_MCP_INTSTAT, CDNS_MCP_INT_SLAVE_MASK);
	FUNC2(cdns, CDNS_MCP_INTMASK,
		     CDNS_MCP_INT_SLAVE_MASK, CDNS_MCP_INT_SLAVE_MASK);

	return IRQ_HANDLED;
}