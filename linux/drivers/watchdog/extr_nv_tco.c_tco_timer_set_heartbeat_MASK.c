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
typedef  int u8 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int heartbeat ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 unsigned char FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tco_lock ; 
 int /*<<< orphan*/  tcobase ; 

__attribute__((used)) static int FUNC6(int t)
{
	int ret = 0;
	unsigned char tmrval;
	unsigned long flags;
	u8 val;

	/*
	 * note seconds_to_ticks(t) > t, so if t > 0x3f, so is
	 * tmrval=seconds_to_ticks(t).  Check that the count in seconds isn't
	 * out of range on it's own (to avoid overflow in tmrval).
	 */
	if (t < 0 || t > 0x3f)
		return -EINVAL;
	tmrval = FUNC3(t);

	/* "Values of 0h-3h are ignored and should not be attempted" */
	if (tmrval > 0x3f || tmrval < 0x04)
		return -EINVAL;

	/* Write new heartbeat to watchdog */
	FUNC4(&tco_lock, flags);
	val = FUNC1(FUNC0(tcobase));
	val &= 0xc0;
	val |= tmrval;
	FUNC2(val, FUNC0(tcobase));
	val = FUNC1(FUNC0(tcobase));

	if ((val & 0x3f) != tmrval)
		ret = -EINVAL;
	FUNC5(&tco_lock, flags);

	if (ret)
		return ret;

	heartbeat = t;
	return 0;
}