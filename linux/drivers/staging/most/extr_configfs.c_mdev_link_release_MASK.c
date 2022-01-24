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
struct mdev_link {int /*<<< orphan*/  list; int /*<<< orphan*/  comp; int /*<<< orphan*/  channel; int /*<<< orphan*/  device; } ;
struct config_item {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct mdev_link*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mdev_link_list ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct mdev_link* FUNC5 (struct config_item*) ; 

__attribute__((used)) static void FUNC6(struct config_item *item)
{
	struct mdev_link *mdev_link = FUNC5(item);
	int ret;

	if (!FUNC2(&mdev_link_list)) {
		ret = FUNC3(mdev_link->device, mdev_link->channel,
				       mdev_link->comp);
		if (ret && (ret != -ENODEV))
			FUNC4("Removing link failed.\n");
		FUNC1(&mdev_link->list);
	}
	FUNC0(FUNC5(item));
}