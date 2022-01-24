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
struct kbd_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct kbd_state*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct kbd_state *state, struct kbd_state *old)
{
	int ret;

	ret = FUNC0(state);
	if (ret == 0)
		return 0;

	/*
	 * When setting the new state fails,try to restore the previous one.
	 * This is needed on some machines where BIOS sets a default state when
	 * setting a new state fails. This default state could be all off.
	 */

	if (FUNC0(old))
		FUNC1("Setting old previous keyboard state failed\n");

	return ret;
}