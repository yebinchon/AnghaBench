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
struct device {int dummy; } ;
typedef  enum nd_async_mode { ____Placeholder_nd_async_mode } nd_async_mode ;

/* Variables and functions */
#define  ND_ASYNC 129 
#define  ND_SYNC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  nd_async_device_unregister ; 
 int /*<<< orphan*/  nd_async_domain ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct device *dev, enum nd_async_mode mode)
{
	bool killed;

	switch (mode) {
	case ND_ASYNC:
		/*
		 * In the async case this is being triggered with the
		 * device lock held and the unregistration work needs to
		 * be moved out of line iff this is thread has won the
		 * race to schedule the deletion.
		 */
		if (!FUNC3(dev))
			return;

		FUNC2(dev);
		FUNC0(nd_async_device_unregister, dev,
				&nd_async_domain);
		break;
	case ND_SYNC:
		/*
		 * In the sync case the device is being unregistered due
		 * to a state change of the parent. Claim the kill state
		 * to synchronize against other unregistration requests,
		 * or otherwise let the async path handle it if the
		 * unregistration was already queued.
		 */
		FUNC4(dev);
		killed = FUNC3(dev);
		FUNC5(dev);

		if (!killed)
			return;

		FUNC6();
		FUNC1(dev);
		break;
	}
}