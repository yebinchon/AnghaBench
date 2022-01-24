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
 int ENOMEM ; 
 int /*<<< orphan*/  WORK_QUEUE_NAME ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * usbip_queue ; 

int FUNC2(void)
{
	usbip_queue = FUNC0(WORK_QUEUE_NAME);
	if (usbip_queue == NULL) {
		FUNC1("failed to create usbip_event\n");
		return -ENOMEM;
	}
	return 0;
}