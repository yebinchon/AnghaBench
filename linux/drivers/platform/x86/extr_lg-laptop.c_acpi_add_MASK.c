#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct acpi_device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_7__ {TYPE_4__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  INIT_KBD_LED ; 
 int /*<<< orphan*/  INIT_TPAD_LED ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_NONE ; 
 int /*<<< orphan*/  PLATFORM_NAME ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  dev_attribute_group ; 
 int /*<<< orphan*/  inited ; 
 int /*<<< orphan*/  kbd_backlight ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* pf_device ; 
 int /*<<< orphan*/  pf_driver ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tpad_led ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct acpi_device *device)
{
	int ret;

	if (pf_device)
		return 0;

	ret = FUNC5(&pf_driver);
	if (ret)
		return ret;

	pf_device = FUNC3(PLATFORM_NAME,
						    PLATFORM_DEVID_NONE,
						    NULL, 0);
	if (FUNC0(pf_device)) {
		ret = FUNC1(pf_device);
		pf_device = NULL;
		FUNC7("unable to register platform device\n");
		goto out_platform_registered;
	}

	ret = FUNC8(&pf_device->dev.kobj, &dev_attribute_group);
	if (ret)
		goto out_platform_device;

	if (!FUNC2(&pf_device->dev, &kbd_backlight))
		inited |= INIT_KBD_LED;

	if (!FUNC2(&pf_device->dev, &tpad_led))
		inited |= INIT_TPAD_LED;

	FUNC9();

	return 0;

out_platform_device:
	FUNC4(pf_device);
out_platform_registered:
	FUNC6(&pf_driver);
	return ret;
}