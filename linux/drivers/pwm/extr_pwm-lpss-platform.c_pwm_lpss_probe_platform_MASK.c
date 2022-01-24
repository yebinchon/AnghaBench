#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct pwm_lpss_chip {int dummy; } ;
struct pwm_lpss_boardinfo {int dummy; } ;
struct TYPE_8__ {TYPE_1__* driver; } ;
struct platform_device {TYPE_2__ dev; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  acpi_match_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPM_FLAG_SMART_PREPARE ; 
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct pwm_lpss_chip*) ; 
 int FUNC1 (struct pwm_lpss_chip*) ; 
 struct acpi_device_id* FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct pwm_lpss_chip*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 struct pwm_lpss_chip* FUNC8 (TYPE_2__*,struct resource*,struct pwm_lpss_boardinfo const*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	const struct pwm_lpss_boardinfo *info;
	const struct acpi_device_id *id;
	struct pwm_lpss_chip *lpwm;
	struct resource *r;

	id = FUNC2(pdev->dev.driver->acpi_match_table, &pdev->dev);
	if (!id)
		return -ENODEV;

	info = (const struct pwm_lpss_boardinfo *)id->driver_data;
	r = FUNC4(pdev, IORESOURCE_MEM, 0);

	lpwm = FUNC8(&pdev->dev, r, info);
	if (FUNC0(lpwm))
		return FUNC1(lpwm);

	FUNC5(pdev, lpwm);

	FUNC3(&pdev->dev, DPM_FLAG_SMART_PREPARE);
	FUNC7(&pdev->dev);
	FUNC6(&pdev->dev);

	return 0;
}