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
struct watchdog_device {unsigned int timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int,int) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdev, unsigned t)
{
	/* resolution is in minutes for timeouts greater than 255 seconds */
	if (t > 255) {
		/* round second resolution up to minute granularity */
		wdev->timeout = FUNC1(t, 60);

		/* set watchdog timer for minutes */
		FUNC0(0x00, CFG_ADDR);
	} else {
		wdev->timeout = t;

		/* set watchdog timer for seconds */
		FUNC0(0x80, CFG_ADDR);
	}

	return 0;
}