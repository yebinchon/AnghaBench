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
typedef  int u32 ;
struct ti_bandgap {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MODE_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct ti_bandgap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct ti_bandgap*,int,int*) ; 
 int FUNC4 (struct ti_bandgap*,int) ; 
 int FUNC5 (struct ti_bandgap*,int) ; 
 int FUNC6 (struct ti_bandgap*,int) ; 

int FUNC7(struct ti_bandgap *bgp, int id,
				int *temperature)
{
	u32 temp;
	int ret;

	ret = FUNC6(bgp, id);
	if (ret)
		return ret;

	if (!FUNC0(bgp, MODE_CONFIG)) {
		ret = FUNC4(bgp, id);
		if (ret)
			return ret;
	}

	FUNC1(&bgp->lock);
	temp = FUNC5(bgp, id);
	FUNC2(&bgp->lock);

	ret = FUNC3(bgp, temp, &temp);
	if (ret)
		return -EIO;

	*temperature = temp;

	return 0;
}