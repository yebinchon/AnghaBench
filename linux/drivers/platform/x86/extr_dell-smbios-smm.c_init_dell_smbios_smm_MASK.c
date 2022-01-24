#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int GFP_DMA32 ; 
 int GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 void* buffer ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dell_smbios_smm_call ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  find_cmd_address ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 TYPE_1__* platform_device ; 
 int FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 () ; 

int FUNC10(void)
{
	int ret;
	/*
	 * Allocate buffer below 4GB for SMI data--only 32-bit physical addr
	 * is passed to SMI handler.
	 */
	buffer = (void *)FUNC0(GFP_KERNEL | GFP_DMA32);
	if (!buffer)
		return -ENOMEM;

	FUNC2(find_cmd_address, NULL);

	if (FUNC9()) {
		FUNC8("Disabling due to WSMT enabled\n");
		ret = -ENODEV;
		goto fail_wsmt;
	}

	platform_device = FUNC5("dell-smbios", 1);
	if (!platform_device) {
		ret = -ENOMEM;
		goto fail_platform_device_alloc;
	}

	ret = FUNC4(platform_device);
	if (ret)
		goto fail_platform_device_add;

	ret = FUNC1(&platform_device->dev,
					  &dell_smbios_smm_call);
	if (ret)
		goto fail_register;

	return 0;

fail_register:
	FUNC6(platform_device);

fail_platform_device_add:
	FUNC7(platform_device);

fail_wsmt:
fail_platform_device_alloc:
	FUNC3((unsigned long)buffer);
	return ret;
}