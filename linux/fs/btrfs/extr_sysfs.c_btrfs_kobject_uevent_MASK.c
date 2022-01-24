#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct block_device {int /*<<< orphan*/  bd_disk; } ;
typedef  enum kobject_action { ____Placeholder_kobject_action } kobject_action ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct block_device *bdev, enum kobject_action action)
{
	int ret;

	ret = FUNC2(&FUNC0(bdev->bd_disk)->kobj, action);
	if (ret)
		FUNC3("BTRFS: Sending event '%d' to kobject: '%s' (%p): failed\n",
			action, FUNC1(&FUNC0(bdev->bd_disk)->kobj),
			&FUNC0(bdev->bd_disk)->kobj);
}