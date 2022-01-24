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
typedef  int /*<<< orphan*/  uint32_t ;
struct tcmu_dev {int /*<<< orphan*/  cmdr_lock; int /*<<< orphan*/  name; } ;
struct page {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (struct tcmu_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct page *FUNC5(struct tcmu_dev *udev, uint32_t dbi)
{
	struct page *page;

	FUNC1(&udev->cmdr_lock);
	page = FUNC4(udev, dbi);
	if (FUNC0(page)) {
		FUNC2(&udev->cmdr_lock);
		return page;
	}

	/*
	 * Userspace messed up and passed in a address not in the
	 * data iov passed to it.
	 */
	FUNC3("Invalid addr to data block mapping  (dbi %u) on device %s\n",
	       dbi, udev->name);
	page = NULL;
	FUNC2(&udev->cmdr_lock);

	return page;
}