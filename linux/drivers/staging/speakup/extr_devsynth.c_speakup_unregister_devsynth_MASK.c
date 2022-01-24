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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ misc_registered ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  synth_device ; 

void FUNC2(void)
{
	if (!misc_registered)
		return;
	FUNC1("speakup: unregistering synth device /dev/synth\n");
	FUNC0(&synth_device);
	misc_registered = 0;
}