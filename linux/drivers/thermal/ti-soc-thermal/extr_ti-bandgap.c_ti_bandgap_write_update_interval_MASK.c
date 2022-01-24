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
typedef  int /*<<< orphan*/  u32 ;
struct ti_bandgap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COUNTER ; 
 int /*<<< orphan*/  COUNTER_DELAY ; 
 int ENOTSUPP ; 
 scalar_t__ FUNC0 (struct ti_bandgap*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ti_bandgap*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_bandgap*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ti_bandgap*,int,int /*<<< orphan*/ ) ; 

int FUNC4(struct ti_bandgap *bgp,
				     int id, u32 interval)
{
	int ret = FUNC1(bgp, id);
	if (ret)
		goto exit;

	if (!FUNC0(bgp, COUNTER) &&
	    !FUNC0(bgp, COUNTER_DELAY)) {
		ret = -ENOTSUPP;
		goto exit;
	}

	if (FUNC0(bgp, COUNTER)) {
		FUNC2(bgp, id, interval);
		goto exit;
	}

	ret = FUNC3(bgp, id, interval);
exit:
	return ret;
}