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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * device_attrs ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fbcon_device ; 
 int fbcon_has_sysfs ; 

__attribute__((used)) static int FUNC3(void)
{
	int i, error = 0;

	fbcon_has_sysfs = 1;

	for (i = 0; i < FUNC0(device_attrs); i++) {
		error = FUNC1(fbcon_device, &device_attrs[i]);

		if (error)
			break;
	}

	if (error) {
		while (--i >= 0)
			FUNC2(fbcon_device, &device_attrs[i]);

		fbcon_has_sysfs = 0;
	}

	return 0;
}