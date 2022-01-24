#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sync; int /*<<< orphan*/  cmd; TYPE_2__* data; } ;
struct ucsi_acpi {int /*<<< orphan*/  ucsi; TYPE_1__ ppm; int /*<<< orphan*/ * dev; int /*<<< orphan*/  guid; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_4__ {int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEVICE_NOTIFY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UCSI_DSM_UUID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucsi_acpi*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct resource*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ucsi_acpi* FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct ucsi_acpi*) ; 
 int /*<<< orphan*/  FUNC13 (struct resource*) ; 
 int /*<<< orphan*/  ucsi_acpi_cmd ; 
 int /*<<< orphan*/  ucsi_acpi_notify ; 
 int /*<<< orphan*/  ucsi_acpi_sync ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct ucsi_acpi *ua;
	struct resource *res;
	acpi_status status;
	int ret;

	ua = FUNC9(&pdev->dev, sizeof(*ua), GFP_KERNEL);
	if (!ua)
		return -ENOMEM;

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC7(&pdev->dev, "missing memory resource\n");
		return -ENODEV;
	}

	/* This will make sure we can use ioremap_nocache() */
	status = FUNC5(FUNC1(&pdev->dev), res, 1);
	if (FUNC0(status))
		return -ENOMEM;

	/*
	 * NOTE: The memory region for the data structures is used also in an
	 * operation region, which means ACPI has already reserved it. Therefore
	 * it can not be requested here, and we can not use
	 * devm_ioremap_resource().
	 */
	ua->ppm.data = FUNC8(&pdev->dev, res->start, FUNC13(res));
	if (!ua->ppm.data)
		return -ENOMEM;

	if (!ua->ppm.data->version)
		return -ENODEV;

	ret = FUNC10(UCSI_DSM_UUID, &ua->guid);
	if (ret)
		return ret;

	ua->ppm.cmd = ucsi_acpi_cmd;
	ua->ppm.sync = ucsi_acpi_sync;
	ua->dev = &pdev->dev;

	status = FUNC4(FUNC1(&pdev->dev),
					     ACPI_DEVICE_NOTIFY,
					     ucsi_acpi_notify, ua);
	if (FUNC0(status)) {
		FUNC7(&pdev->dev, "failed to install notify handler\n");
		return -ENODEV;
	}

	ua->ucsi = FUNC14(&pdev->dev, &ua->ppm);
	if (FUNC2(ua->ucsi)) {
		FUNC6(FUNC1(&pdev->dev),
					   ACPI_DEVICE_NOTIFY,
					   ucsi_acpi_notify);
		return FUNC3(ua->ucsi);
	}

	FUNC12(pdev, ua);

	return 0;
}