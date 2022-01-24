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
struct mdev_link {int destroy_link; int /*<<< orphan*/  list; int /*<<< orphan*/  comp; int /*<<< orphan*/  channel; int /*<<< orphan*/  device; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mdev_link_list ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mdev_link* FUNC4 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC5(struct config_item *item,
					    const char *page, size_t count)
{
	struct mdev_link *mdev_link = FUNC4(item);
	bool tmp;
	int ret;

	ret = FUNC0(page, &tmp);
	if (ret)
		return ret;
	if (!tmp)
		return count;
	mdev_link->destroy_link = tmp;
	ret = FUNC3(mdev_link->device, mdev_link->channel,
			       mdev_link->comp);
	if (ret)
		return ret;
	if (!FUNC2(&mdev_link_list))
		FUNC1(&mdev_link->list);
	return count;
}