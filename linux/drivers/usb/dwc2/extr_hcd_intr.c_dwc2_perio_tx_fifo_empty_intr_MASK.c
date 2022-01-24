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
 int /*<<< orphan*/  DWC2_TRANSACTION_PERIODIC ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dwc2_hsotg *hsotg)
{
	if (FUNC0())
		FUNC1(hsotg->dev, "--Periodic TxFIFO Empty Interrupt--\n");
	FUNC2(hsotg, DWC2_TRANSACTION_PERIODIC);
}