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
struct phy_mdm6600 {int enabled; scalar_t__ status; int running; int /*<<< orphan*/  dev; int /*<<< orphan*/  ack; struct gpio_desc** ctrl_gpios; TYPE_1__* mode_gpios; } ;
struct gpio_desc {int dummy; } ;
struct TYPE_2__ {struct gpio_desc** desc; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  PHY_MDM6600_CMD_NO_BYPASS ; 
 int /*<<< orphan*/  PHY_MDM6600_ENABLED_DELAY_MS ; 
 size_t PHY_MDM6600_MODE0 ; 
 size_t PHY_MDM6600_MODE1 ; 
 int PHY_MDM6600_PHY_DELAY_MS ; 
 size_t PHY_MDM6600_POWER ; 
 size_t PHY_MDM6600_RESET ; 
 scalar_t__ PHY_MDM6600_STATUS_PANIC ; 
 scalar_t__ PHY_MDM6600_STATUS_SHUTDOWN_ACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct phy_mdm6600*) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct gpio_desc*,int) ; 
 int FUNC6 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct phy_mdm6600*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phy_mdm6600_wakeirq_thread ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct phy_mdm6600 *ddata)
{
	struct gpio_desc *mode_gpio0, *mode_gpio1, *reset_gpio, *power_gpio;
	int error = 0, wakeirq;

	mode_gpio0 = ddata->mode_gpios->desc[PHY_MDM6600_MODE0];
	mode_gpio1 = ddata->mode_gpios->desc[PHY_MDM6600_MODE1];
	reset_gpio = ddata->ctrl_gpios[PHY_MDM6600_RESET];
	power_gpio = ddata->ctrl_gpios[PHY_MDM6600_POWER];

	/*
	 * Shared GPIOs must be low for normal USB mode. After booting
	 * they are used for OOB wake signaling. These can be also used
	 * to configure USB flashing mode later on based on a module
	 * parameter.
	 */
	FUNC5(mode_gpio0, 0);
	FUNC5(mode_gpio1, 0);

	/* Request start-up mode */
	FUNC9(ddata, PHY_MDM6600_CMD_NO_BYPASS);

	/* Request a reset first */
	FUNC5(reset_gpio, 0);
	FUNC8(100);

	/* Toggle power GPIO to request mdm6600 to start */
	FUNC5(power_gpio, 1);
	FUNC8(100);
	FUNC5(power_gpio, 0);

	/*
	 * Looks like the USB PHY needs between 2.2 to 4 seconds.
	 * If we try to use it before that, we will get L3 errors
	 * from omap-usb-host trying to access the PHY. See also
	 * phy_mdm6600_init() for -EPROBE_DEFER.
	 */
	FUNC8(PHY_MDM6600_PHY_DELAY_MS);
	ddata->enabled = true;

	/* Booting up the rest of MDM6600 will take total about 8 seconds */
	FUNC1(ddata->dev, "Waiting for power up request to complete..\n");
	if (FUNC10(&ddata->ack,
			FUNC7(PHY_MDM6600_ENABLED_DELAY_MS))) {
		if (ddata->status > PHY_MDM6600_STATUS_PANIC &&
		    ddata->status < PHY_MDM6600_STATUS_SHUTDOWN_ACK)
			FUNC1(ddata->dev, "Powered up OK\n");
	} else {
		ddata->enabled = false;
		error = -ETIMEDOUT;
		FUNC0(ddata->dev, "Timed out powering up\n");
	}

	/* Reconfigure mode1 GPIO as input for OOB wake */
	FUNC4(mode_gpio1);

	wakeirq = FUNC6(mode_gpio1);
	if (wakeirq <= 0)
		return wakeirq;

	error = FUNC3(ddata->dev, wakeirq, NULL,
					  phy_mdm6600_wakeirq_thread,
					  IRQF_TRIGGER_RISING |
					  IRQF_TRIGGER_FALLING |
					  IRQF_ONESHOT,
					  "mdm6600-wake",
					  ddata);
	if (error)
		FUNC2(ddata->dev, "no modem wakeirq irq%i: %i\n",
			 wakeirq, error);

	ddata->running = true;

	return error;
}