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
struct wilco_ec_response {int dummy; } ;
struct wilco_ec_device {int data_size; void* debugfs_pdev; void* rtc_pdev; void* telem_pdev; TYPE_1__* io_packet; void* io_command; void* io_data; void* data_buffer; int /*<<< orphan*/  mailbox_lock; struct device* dev; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int start; } ;

/* Variables and functions */
 int EC_MAILBOX_DATA_SIZE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 void* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (struct device*,char*,int /*<<< orphan*/ ,struct wilco_ec_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct wilco_ec_device*) ; 
 int FUNC10 (struct wilco_ec_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct wilco_ec_device*) ; 
 void* FUNC12 (struct platform_device*,int) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct wilco_ec_device *ec;
	int ret;

	ec = FUNC5(dev, sizeof(*ec), GFP_KERNEL);
	if (!ec)
		return -ENOMEM;

	FUNC9(pdev, ec);
	ec->dev = dev;
	FUNC6(&ec->mailbox_lock);

	ec->data_size = sizeof(struct wilco_ec_response) + EC_MAILBOX_DATA_SIZE;
	ec->data_buffer = FUNC5(dev, ec->data_size, GFP_KERNEL);
	if (!ec->data_buffer)
		return -ENOMEM;

	/* Prepare access to IO regions provided by ACPI */
	ec->io_data = FUNC12(pdev, 0);	/* Host Data */
	ec->io_command = FUNC12(pdev, 1);	/* Host Command */
	ec->io_packet = FUNC12(pdev, 2);	/* MEC EMI */
	if (!ec->io_data || !ec->io_command || !ec->io_packet)
		return -ENODEV;

	/* Initialize cros_ec register interface for communication */
	FUNC3(ec->io_packet->start,
			     ec->io_packet->start + EC_MAILBOX_DATA_SIZE);

	/*
	 * Register a child device that will be found by the debugfs driver.
	 * Ignore failure.
	 */
	ec->debugfs_pdev = FUNC7(dev,
							 "wilco-ec-debugfs",
							 PLATFORM_DEVID_AUTO,
							 NULL, 0);

	/* Register a child device that will be found by the RTC driver. */
	ec->rtc_pdev = FUNC7(dev, "rtc-wilco-ec",
						     PLATFORM_DEVID_AUTO,
						     NULL, 0);
	if (FUNC0(ec->rtc_pdev)) {
		FUNC4(dev, "Failed to create RTC platform device\n");
		ret = FUNC1(ec->rtc_pdev);
		goto unregister_debugfs;
	}

	ret = FUNC10(ec);
	if (ret < 0) {
		FUNC4(dev, "Failed to create sysfs entries: %d", ret);
		goto unregister_rtc;
	}

	/* Register child device that will be found by the telemetry driver. */
	ec->telem_pdev = FUNC7(dev, "wilco_telem",
						       PLATFORM_DEVID_AUTO,
						       ec, sizeof(*ec));
	if (FUNC0(ec->telem_pdev)) {
		FUNC4(dev, "Failed to create telemetry platform device\n");
		ret = FUNC1(ec->telem_pdev);
		goto remove_sysfs;
	}

	return 0;

remove_sysfs:
	FUNC11(ec);
unregister_rtc:
	FUNC8(ec->rtc_pdev);
unregister_debugfs:
	if (ec->debugfs_pdev)
		FUNC8(ec->debugfs_pdev);
	FUNC2();
	return ret;
}