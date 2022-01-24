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
 int /*<<< orphan*/  GINTSTS ; 
 int /*<<< orphan*/  GINTSTS_MODEMIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC1 (struct dwc2_hsotg*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dwc2_hsotg *hsotg)
{
	/* Clear interrupt */
	FUNC2(hsotg, GINTSTS_MODEMIS, GINTSTS);

	FUNC0(hsotg->dev, "Mode Mismatch Interrupt: currently in %s mode\n",
		 FUNC1(hsotg) ? "Host" : "Device");
}