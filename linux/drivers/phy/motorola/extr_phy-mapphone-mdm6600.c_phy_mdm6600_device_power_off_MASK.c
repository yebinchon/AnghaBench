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
struct phy_mdm6600 {int enabled; scalar_t__ status; int /*<<< orphan*/  dev; int /*<<< orphan*/  ack; struct gpio_desc** ctrl_gpios; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_MDM6600_CMD_BP_SHUTDOWN_REQ ; 
 size_t PHY_MDM6600_RESET ; 
 scalar_t__ PHY_MDM6600_STATUS_PANIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_mdm6600*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct phy_mdm6600 *ddata)
{
	struct gpio_desc *reset_gpio =
		ddata->ctrl_gpios[PHY_MDM6600_RESET];

	ddata->enabled = false;
	FUNC5(ddata, PHY_MDM6600_CMD_BP_SHUTDOWN_REQ);
	FUNC4(100);

	FUNC2(reset_gpio, 1);

	FUNC1(ddata->dev, "Waiting for power down request to complete.. ");
	if (FUNC6(&ddata->ack,
					FUNC3(5000))) {
		if (ddata->status == PHY_MDM6600_STATUS_PANIC)
			FUNC1(ddata->dev, "Powered down OK\n");
	} else {
		FUNC0(ddata->dev, "Timed out powering down\n");
	}
}