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
struct mdev_link {int /*<<< orphan*/  datatype; } ;
struct config_item {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 struct mdev_link* FUNC2 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC3(struct config_item *item,
					const char *page, size_t count)
{
	struct mdev_link *mdev_link = FUNC2(item);

	if (!FUNC1(page, "control") && !FUNC1(page, "async") &&
	    !FUNC1(page, "sync") && !FUNC1(page, "isoc") &&
	    !FUNC1(page, "isoc_avp"))
		return -EINVAL;
	FUNC0(mdev_link->datatype, page);
	return count;
}