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
struct usbip_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct usbip_device*) ; 
 scalar_t__ FUNC2 (struct usbip_device*) ; 

int FUNC3(void *data)
{
	struct usbip_device *ud = data;

	while (!FUNC0()) {
		if (FUNC2(ud))
			break;

		FUNC1(ud);
	}

	return 0;
}