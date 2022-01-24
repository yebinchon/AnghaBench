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
 unsigned int FUNC0 () ; 

unsigned int FUNC1(void)
{
	unsigned int xen_max = FUNC0();
	static unsigned int boot_max_nr_grant_frames;

	/* First time, initialize it properly. */
	if (!boot_max_nr_grant_frames)
		boot_max_nr_grant_frames = FUNC0();

	if (xen_max > boot_max_nr_grant_frames)
		return boot_max_nr_grant_frames;
	return xen_max;
}