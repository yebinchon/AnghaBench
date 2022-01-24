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
 int /*<<< orphan*/  DWC2_TRANSACTION_NON_PERIODIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc2_hsotg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dwc2_hsotg *hsotg)
{
	FUNC0(hsotg->dev, "--Non-Periodic TxFIFO Empty Interrupt--\n");
	FUNC1(hsotg, DWC2_TRANSACTION_NON_PERIODIC);
}