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
 int EINTR ; 
 int EIO ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ disable_vt_switch ; 
 int fg_console ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (unsigned int) ; 

int FUNC6(unsigned int vt, int alloc)
{
	int prev;

	FUNC0();
	/* Graphics mode - up to X */
	if (disable_vt_switch) {
		FUNC1();
		return 0;
	}
	prev = fg_console;

	if (alloc && FUNC4(vt)) {
		/* we can't have a free VC for now. Too bad,
		 * we don't want to mess the screen for now. */
		FUNC1();
		return -ENOSPC;
	}

	if (FUNC3(vt)) {
		/*
		 * We're unable to switch to the SUSPEND_CONSOLE.
		 * Let the calling function know so it can decide
		 * what to do.
		 */
		FUNC1();
		return -EIO;
	}
	FUNC1();
	if (FUNC5(vt + 1)) {
		FUNC2("Suspend: Can't switch VCs.");
		return -EINTR;
	}
	return prev;
}