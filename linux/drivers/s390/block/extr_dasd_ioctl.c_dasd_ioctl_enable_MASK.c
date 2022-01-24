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
struct dasd_device {TYPE_1__* block; } ;
struct block_device {int /*<<< orphan*/  bd_mutex; int /*<<< orphan*/  bd_inode; int /*<<< orphan*/  bd_disk; } ;
typedef  int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  gdp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EACCES ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dasd_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct block_device *bdev)
{
	struct dasd_device *base;

	if (!FUNC0(CAP_SYS_ADMIN))
		return -EACCES;

	base = FUNC1(bdev->bd_disk);
	if (!base)
		return -ENODEV;

	FUNC2(base);
	/* Formatting the dasd device can change the capacity. */
	FUNC6(&bdev->bd_mutex);
	FUNC5(bdev->bd_inode,
		     (loff_t)FUNC4(base->block->gdp) << 9);
	FUNC7(&bdev->bd_mutex);
	FUNC3(base);
	return 0;
}