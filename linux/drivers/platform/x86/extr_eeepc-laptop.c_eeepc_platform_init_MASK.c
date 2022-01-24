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
struct eeepc_laptop {TYPE_2__* platform_device; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEEPC_LAPTOP_FILE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  platform_attribute_group ; 
 int FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct eeepc_laptop*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct eeepc_laptop *eeepc)
{
	int result;

	eeepc->platform_device = FUNC1(EEEPC_LAPTOP_FILE, -1);
	if (!eeepc->platform_device)
		return -ENOMEM;
	FUNC4(eeepc->platform_device, eeepc);

	result = FUNC0(eeepc->platform_device);
	if (result)
		goto fail_platform_device;

	result = FUNC5(&eeepc->platform_device->dev.kobj,
				    &platform_attribute_group);
	if (result)
		goto fail_sysfs;
	return 0;

fail_sysfs:
	FUNC2(eeepc->platform_device);
fail_platform_device:
	FUNC3(eeepc->platform_device);
	return result;
}