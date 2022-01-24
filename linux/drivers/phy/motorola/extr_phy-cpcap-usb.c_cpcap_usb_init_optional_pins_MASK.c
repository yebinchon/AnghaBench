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
struct cpcap_phy_ddata {int /*<<< orphan*/ * pins_uart; int /*<<< orphan*/ * pins; int /*<<< orphan*/  dev; int /*<<< orphan*/ * pins_utmi; int /*<<< orphan*/ * pins_ulpi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct cpcap_phy_ddata *ddata)
{
	ddata->pins = FUNC3(ddata->dev);
	if (FUNC0(ddata->pins)) {
		FUNC2(ddata->dev, "default pins not configured: %ld\n",
			 FUNC1(ddata->pins));
		ddata->pins = NULL;

		return 0;
	}

	ddata->pins_ulpi = FUNC4(ddata->pins, "ulpi");
	if (FUNC0(ddata->pins_ulpi)) {
		FUNC2(ddata->dev, "ulpi pins not configured\n");
		ddata->pins_ulpi = NULL;
	}

	ddata->pins_utmi = FUNC4(ddata->pins, "utmi");
	if (FUNC0(ddata->pins_utmi)) {
		FUNC2(ddata->dev, "utmi pins not configured\n");
		ddata->pins_utmi = NULL;
	}

	ddata->pins_uart = FUNC4(ddata->pins, "uart");
	if (FUNC0(ddata->pins_uart)) {
		FUNC2(ddata->dev, "uart pins not configured\n");
		ddata->pins_uart = NULL;
	}

	if (ddata->pins_uart)
		return FUNC5(ddata->pins, ddata->pins_uart);

	return 0;
}