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
struct ec_response_get_protocol_info {int dummy; } ;
struct ec_params_hello {int dummy; } ;
struct device {scalar_t__ of_node; } ;
struct cros_ec_platform {int dummy; } ;
struct cros_ec_device {int max_request; int max_response; int irq; struct device* dev; void* ec; void* pd; scalar_t__ max_passthru; int /*<<< orphan*/  lock; void* dout; int /*<<< orphan*/  dout_size; void* din; int /*<<< orphan*/  din_size; int /*<<< orphan*/  event_notifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CONFIG_OF ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC3 (void*) ; 
 int FUNC4 (struct cros_ec_device*) ; 
 int FUNC5 (struct cros_ec_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*) ; 
 void* FUNC9 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*) ; 
 int FUNC11 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct cros_ec_device*) ; 
 int /*<<< orphan*/  ec_irq_thread ; 
 int /*<<< orphan*/  ec_p ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pd_p ; 
 void* FUNC13 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 

int FUNC15(struct cros_ec_device *ec_dev)
{
	struct device *dev = ec_dev->dev;
	int err = 0;

	FUNC0(&ec_dev->event_notifier);

	ec_dev->max_request = sizeof(struct ec_params_hello);
	ec_dev->max_response = sizeof(struct ec_response_get_protocol_info);
	ec_dev->max_passthru = 0;

	ec_dev->din = FUNC9(dev, ec_dev->din_size, GFP_KERNEL);
	if (!ec_dev->din)
		return -ENOMEM;

	ec_dev->dout = FUNC9(dev, ec_dev->dout_size, GFP_KERNEL);
	if (!ec_dev->dout)
		return -ENOMEM;

	FUNC12(&ec_dev->lock);

	err = FUNC4(ec_dev);
	if (err) {
		FUNC7(dev, "Cannot identify the EC: error %d\n", err);
		return err;
	}

	if (ec_dev->irq) {
		err = FUNC11(dev, ec_dev->irq, NULL,
				ec_irq_thread, IRQF_TRIGGER_LOW | IRQF_ONESHOT,
				"chromeos-ec", ec_dev);
		if (err) {
			FUNC7(dev, "Failed to request IRQ %d: %d",
				ec_dev->irq, err);
			return err;
		}
	}

	/* Register a platform device for the main EC instance */
	ec_dev->ec = FUNC13(ec_dev->dev, "cros-ec-dev",
					PLATFORM_DEVID_AUTO, &ec_p,
					sizeof(struct cros_ec_platform));
	if (FUNC2(ec_dev->ec)) {
		FUNC7(ec_dev->dev,
			"Failed to create CrOS EC platform device\n");
		return FUNC3(ec_dev->ec);
	}

	if (ec_dev->max_passthru) {
		/*
		 * Register a platform device for the PD behind the main EC.
		 * We make the following assumptions:
		 * - behind an EC, we have a pd
		 * - only one device added.
		 * - the EC is responsive at init time (it is not true for a
		 *   sensor hub).
		 */
		ec_dev->pd = FUNC13(ec_dev->dev,
					"cros-ec-dev",
					PLATFORM_DEVID_AUTO, &pd_p,
					sizeof(struct cros_ec_platform));
		if (FUNC2(ec_dev->pd)) {
			FUNC7(ec_dev->dev,
				"Failed to create CrOS PD platform device\n");
			FUNC14(ec_dev->ec);
			return FUNC3(ec_dev->pd);
		}
	}

	if (FUNC1(CONFIG_OF) && dev->of_node) {
		err = FUNC10(dev);
		if (err) {
			FUNC14(ec_dev->pd);
			FUNC14(ec_dev->ec);
			FUNC7(dev, "Failed to register sub-devices\n");
			return err;
		}
	}

	/*
	 * Clear sleep event - this will fail harmlessly on platforms that
	 * don't implement the sleep event host command.
	 */
	err = FUNC5(ec_dev, 0);
	if (err < 0)
		FUNC6(ec_dev->dev, "Error %d clearing sleep event to ec",
			err);

	FUNC8(dev, "Chrome EC device registered\n");

	return 0;
}