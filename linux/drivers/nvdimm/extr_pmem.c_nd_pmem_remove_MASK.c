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
struct pmem_device {int /*<<< orphan*/ * bb_state; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct pmem_device* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct pmem_device *pmem = FUNC0(dev);

	if (FUNC1(dev))
		FUNC3(FUNC5(dev));
	else {
		/*
		 * Note, this assumes nd_device_lock() context to not
		 * race nd_pmem_notify()
		 */
		FUNC4(pmem->bb_state);
		pmem->bb_state = NULL;
	}
	FUNC2(FUNC6(dev->parent), NULL);

	return 0;
}