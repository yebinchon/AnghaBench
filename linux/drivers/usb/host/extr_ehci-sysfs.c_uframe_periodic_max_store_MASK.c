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
typedef  unsigned int u8 ;
struct ehci_hcd {unsigned int uframe_periodic_max; int /*<<< orphan*/  lock; int /*<<< orphan*/ * bandwidth; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 unsigned int EHCI_BANDWIDTH_SIZE ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ehci_hcd*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ehci_hcd*,char*) ; 
 struct ehci_hcd* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ,unsigned int*) ; 
 unsigned int FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t count)
{
	struct ehci_hcd		*ehci;
	unsigned		uframe_periodic_max;
	unsigned		uframe;
	unsigned long		flags;
	ssize_t			ret;

	ehci = FUNC3(FUNC0(dev));
	if (FUNC4(buf, 0, &uframe_periodic_max) < 0)
		return -EINVAL;

	if (uframe_periodic_max < 100 || uframe_periodic_max >= 125) {
		FUNC1(ehci, "rejecting invalid request for "
				"uframe_periodic_max=%u\n", uframe_periodic_max);
		return -EINVAL;
	}

	ret = -EINVAL;

	/*
	 * lock, so that our checking does not race with possible periodic
	 * bandwidth allocation through submitting new urbs.
	 */
	FUNC6 (&ehci->lock, flags);

	/*
	 * for request to decrease max periodic bandwidth, we have to check
	 * to see whether the decrease is possible.
	 */
	if (uframe_periodic_max < ehci->uframe_periodic_max) {
		u8		allocated_max = 0;

		for (uframe = 0; uframe < EHCI_BANDWIDTH_SIZE; ++uframe)
			allocated_max = FUNC5(allocated_max,
					ehci->bandwidth[uframe]);

		if (allocated_max > uframe_periodic_max) {
			FUNC1(ehci,
				"cannot decrease uframe_periodic_max because "
				"periodic bandwidth is already allocated "
				"(%u > %u)\n",
				allocated_max, uframe_periodic_max);
			goto out_unlock;
		}
	}

	/* increasing is always ok */

	FUNC1(ehci, "setting max periodic bandwidth to %u%% "
			"(== %u usec/uframe)\n",
			100*uframe_periodic_max/125, uframe_periodic_max);

	if (uframe_periodic_max != 100)
		FUNC2(ehci, "max periodic bandwidth set is non-standard\n");

	ehci->uframe_periodic_max = uframe_periodic_max;
	ret = count;

out_unlock:
	FUNC7 (&ehci->lock, flags);
	return ret;
}