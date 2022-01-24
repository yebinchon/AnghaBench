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
typedef  int u_char ;

/* Variables and functions */
 int /*<<< orphan*/  flush ; 
 int /*<<< orphan*/  flush_lock ; 
 scalar_t__ is_flushing ; 
 scalar_t__ FUNC0 (int*) ; 
 int lastind ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int xoff ; 

__attribute__((used)) static void FUNC4(u_char c)
{
	static int ind = -1;

	if (c == 0x01) {
		unsigned long flags;

		FUNC1(&flush_lock, flags);
		is_flushing = 0;
		FUNC3(&flush);
		FUNC2(&flush_lock, flags);
	} else if (c == 0x13) {
		xoff = 1;
	} else if (c == 0x11) {
		xoff = 0;
	} else if (FUNC0(&c)) {
		if (ind == -1)
			ind = c;
		else
			ind = ind * 10 + c;
	} else if ((c > 31) && (c < 127)) {
		if (ind != -1)
			lastind = (u_char)ind;
		ind = -1;
	}
}