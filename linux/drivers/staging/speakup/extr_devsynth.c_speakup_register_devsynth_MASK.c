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
 int /*<<< orphan*/  MISC_MAJOR ; 
 int /*<<< orphan*/  SYNTH_MINOR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int misc_registered ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  synth_device ; 

void FUNC3(void)
{
	if (misc_registered != 0)
		return;
/* zero it so if register fails, deregister will not ref invalid ptrs */
	if (FUNC0(&synth_device)) {
		FUNC2("Couldn't initialize miscdevice /dev/synth.\n");
	} else {
		FUNC1("initialized device: /dev/synth, node (MAJOR %d, MINOR %d)\n",
			MISC_MAJOR, SYNTH_MINOR);
		misc_registered = 1;
	}
}