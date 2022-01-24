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
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct logger_data {int /*<<< orphan*/  log_work; int /*<<< orphan*/  log_workqueue; struct cros_ec_dev* ec_dev; struct device* dev; } ;
struct cros_ec_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CROS_USBPD_LOG_UPDATE_DELAY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  cros_usbpd_log_check ; 
 struct cros_ec_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 struct logger_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct logger_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pd)
{
	struct cros_ec_dev *ec_dev = FUNC2(pd->dev.parent);
	struct device *dev = &pd->dev;
	struct logger_data *logger;

	logger = FUNC3(dev, sizeof(*logger), GFP_KERNEL);
	if (!logger)
		return -ENOMEM;

	logger->dev = dev;
	logger->ec_dev = ec_dev;

	FUNC4(pd, logger);

	/* Retrieve PD event logs periodically */
	FUNC0(&logger->log_work, cros_usbpd_log_check);
	logger->log_workqueue =	FUNC1("cros_usbpd_log");
	if (!logger->log_workqueue)
		return -ENOMEM;

	FUNC5(logger->log_workqueue, &logger->log_work,
			   CROS_USBPD_LOG_UPDATE_DELAY);

	return 0;
}