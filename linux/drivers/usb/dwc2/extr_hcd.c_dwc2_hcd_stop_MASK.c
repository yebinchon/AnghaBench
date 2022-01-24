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
struct dwc2_hsotg {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPRT0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct dwc2_hsotg *hsotg)
{
	FUNC0(hsotg->dev, "DWC OTG HCD STOP\n");

	/*
	 * The root hub should be disconnected before this function is called.
	 * The disconnect will clear the QTD lists (via ..._hcd_urb_dequeue)
	 * and the QH lists (via ..._hcd_endpoint_disable).
	 */

	/* Turn off all host-specific interrupts */
	FUNC1(hsotg);

	/* Turn off the vbus power */
	FUNC0(hsotg->dev, "PortPower off\n");
	FUNC2(hsotg, 0, HPRT0);
}