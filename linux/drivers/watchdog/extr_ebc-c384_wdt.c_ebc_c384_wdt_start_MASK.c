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
 unsigned int FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  PET_ADDR ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdev)
{
	unsigned t = wdev->timeout;

	/* resolution is in minutes for timeouts greater than 255 seconds */
	if (t > 255)
		t = FUNC0(t, 60);

	FUNC1(t, PET_ADDR);

	return 0;
}