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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ NVRAM_OFFSET ; 
 scalar_t__ can_bank2 ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void *priv, unsigned int off, void *val,
			   size_t count)
{
	unsigned char *buf = val;
	int	retval;

	off += NVRAM_OFFSET;
	FUNC2(&rtc_lock);
	for (retval = 0; count; count--, off++, retval++) {
		if (off < 128)
			*buf++ = FUNC0(off);
		else if (can_bank2)
			*buf++ = FUNC1(off);
		else
			break;
	}
	FUNC3(&rtc_lock);

	return retval;
}