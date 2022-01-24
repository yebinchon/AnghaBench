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
struct watchdog_device {struct device* parent; int /*<<< orphan*/  timeout; int /*<<< orphan*/  max_timeout; int /*<<< orphan*/  min_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct ni903x_wdt {scalar_t__ io_base; struct watchdog_device wdd; struct device* dev; } ;
struct device {int dummy; } ;
struct acpi_device {int /*<<< orphan*/  handle; struct ni903x_wdt* driver_data; struct device dev; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  METHOD_NAME__CRS ; 
 scalar_t__ NIWD_CONTROL ; 
 int NIWD_CONTROL_MODE ; 
 int NIWD_CONTROL_RESET ; 
 int /*<<< orphan*/  NIWD_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  NIWD_MAX_TIMEOUT ; 
 int /*<<< orphan*/  NIWD_MIN_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ni903x_wdt*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct ni903x_wdt* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ni903x_resources ; 
 int /*<<< orphan*/  ni903x_wdd_info ; 
 int /*<<< orphan*/  ni903x_wdd_ops ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  FUNC6 (struct watchdog_device*,int /*<<< orphan*/ ,struct device*) ; 
 int FUNC7 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct watchdog_device*,struct ni903x_wdt*) ; 
 int /*<<< orphan*/  FUNC9 (struct watchdog_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct acpi_device *device)
{
	struct device *dev = &device->dev;
	struct watchdog_device *wdd;
	struct ni903x_wdt *wdt;
	acpi_status status;
	int ret;

	wdt = FUNC4(dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	device->driver_data = wdt;
	wdt->dev = dev;

	status = FUNC1(device->handle, METHOD_NAME__CRS,
				     ni903x_resources, wdt);
	if (FUNC0(status) || wdt->io_base == 0) {
		FUNC3(dev, "failed to get resources\n");
		return -ENODEV;
	}

	wdd = &wdt->wdd;
	wdd->info = &ni903x_wdd_info;
	wdd->ops = &ni903x_wdd_ops;
	wdd->min_timeout = NIWD_MIN_TIMEOUT;
	wdd->max_timeout = NIWD_MAX_TIMEOUT;
	wdd->timeout = NIWD_DEFAULT_TIMEOUT;
	wdd->parent = dev;
	FUNC8(wdd, wdt);
	FUNC9(wdd, nowayout);
	FUNC6(wdd, timeout, dev);

	ret = FUNC7(wdd);
	if (ret)
		return ret;

	/* Switch from boot mode to user mode */
	FUNC5(NIWD_CONTROL_RESET | NIWD_CONTROL_MODE,
	     wdt->io_base + NIWD_CONTROL);

	FUNC2(dev, "io_base=0x%04X, timeout=%d, nowayout=%d\n",
		wdt->io_base, timeout, nowayout);

	return 0;
}