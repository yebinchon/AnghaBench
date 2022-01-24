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
struct fotg210_hcd {unsigned int uframe_periodic_max; unsigned int periodic_size; int /*<<< orphan*/  lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct fotg210_hcd*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct fotg210_hcd*,char*) ; 
 struct fotg210_hcd* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ,unsigned int*) ; 
 unsigned short FUNC6 (unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fotg210_hcd*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct fotg210_hcd *fotg210;
	unsigned uframe_periodic_max;
	unsigned frame, uframe;
	unsigned short allocated_max;
	unsigned long flags;
	ssize_t ret;

	fotg210 = FUNC4(FUNC0(FUNC1(dev)));
	if (FUNC5(buf, 0, &uframe_periodic_max) < 0)
		return -EINVAL;

	if (uframe_periodic_max < 100 || uframe_periodic_max >= 125) {
		FUNC2(fotg210, "rejecting invalid request for uframe_periodic_max=%u\n",
				uframe_periodic_max);
		return -EINVAL;
	}

	ret = -EINVAL;

	/*
	 * lock, so that our checking does not race with possible periodic
	 * bandwidth allocation through submitting new urbs.
	 */
	FUNC8(&fotg210->lock, flags);

	/*
	 * for request to decrease max periodic bandwidth, we have to check
	 * every microframe in the schedule to see whether the decrease is
	 * possible.
	 */
	if (uframe_periodic_max < fotg210->uframe_periodic_max) {
		allocated_max = 0;

		for (frame = 0; frame < fotg210->periodic_size; ++frame)
			for (uframe = 0; uframe < 7; ++uframe)
				allocated_max = FUNC6(allocated_max,
						FUNC7(fotg210, frame,
						uframe));

		if (allocated_max > uframe_periodic_max) {
			FUNC2(fotg210,
					"cannot decrease uframe_periodic_max because periodic bandwidth is already allocated (%u > %u)\n",
					allocated_max, uframe_periodic_max);
			goto out_unlock;
		}
	}

	/* increasing is always ok */

	FUNC2(fotg210,
			"setting max periodic bandwidth to %u%% (== %u usec/uframe)\n",
			100 * uframe_periodic_max/125, uframe_periodic_max);

	if (uframe_periodic_max != 100)
		FUNC3(fotg210, "max periodic bandwidth set is non-standard\n");

	fotg210->uframe_periodic_max = uframe_periodic_max;
	ret = count;

out_unlock:
	FUNC9(&fotg210->lock, flags);
	return ret;
}