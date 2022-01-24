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
struct platform_device {int dummy; } ;
struct phy_mdm6600 {int /*<<< orphan*/  status_work; int /*<<< orphan*/  bootup_work; int /*<<< orphan*/  modem_wake_work; int /*<<< orphan*/  ack; int /*<<< orphan*/  running; int /*<<< orphan*/  dev; struct gpio_desc** ctrl_gpios; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_MDM6600_ENABLED_DELAY_MS ; 
 size_t PHY_MDM6600_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_mdm6600*) ; 
 struct phy_mdm6600* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct phy_mdm6600 *ddata = FUNC4(pdev);
	struct gpio_desc *reset_gpio = ddata->ctrl_gpios[PHY_MDM6600_RESET];

	FUNC6(ddata->dev);
	FUNC7(ddata->dev);
	FUNC5(ddata->dev);

	if (!ddata->running)
		FUNC8(&ddata->ack,
			FUNC2(PHY_MDM6600_ENABLED_DELAY_MS));

	FUNC1(reset_gpio, 1);
	FUNC3(ddata);

	FUNC0(&ddata->modem_wake_work);
	FUNC0(&ddata->bootup_work);
	FUNC0(&ddata->status_work);

	return 0;
}