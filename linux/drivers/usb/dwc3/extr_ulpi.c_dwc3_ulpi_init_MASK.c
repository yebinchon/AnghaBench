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
struct dwc3 {int /*<<< orphan*/  ulpi; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dwc3_ulpi_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct dwc3 *dwc)
{
	/* Register the interface */
	dwc->ulpi = FUNC3(dwc->dev, &dwc3_ulpi_ops);
	if (FUNC0(dwc->ulpi)) {
		FUNC2(dwc->dev, "failed to register ULPI interface");
		return FUNC1(dwc->ulpi);
	}

	return 0;
}