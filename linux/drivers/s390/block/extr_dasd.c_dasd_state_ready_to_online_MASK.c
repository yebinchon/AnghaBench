#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hd_struct {int dummy; } ;
struct gendisk {int dummy; } ;
struct disk_part_iter {int dummy; } ;
struct dasd_device {int features; TYPE_4__* block; int /*<<< orphan*/  state; } ;
struct TYPE_8__ {TYPE_1__* bdev; struct gendisk* gdp; } ;
struct TYPE_7__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_5__ {struct gendisk* bd_disk; } ;

/* Variables and functions */
 int DASD_FEATURE_USERAW ; 
 int /*<<< orphan*/  DASD_STATE_ONLINE ; 
 int /*<<< orphan*/  DISK_PITER_INCL_PART0 ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (struct disk_part_iter*) ; 
 int /*<<< orphan*/  FUNC2 (struct disk_part_iter*,struct gendisk*,int /*<<< orphan*/ ) ; 
 struct hd_struct* FUNC3 (struct disk_part_iter*) ; 
 TYPE_3__* FUNC4 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (struct hd_struct*) ; 

__attribute__((used)) static int
FUNC7(struct dasd_device * device)
{
	struct gendisk *disk;
	struct disk_part_iter piter;
	struct hd_struct *part;

	device->state = DASD_STATE_ONLINE;
	if (device->block) {
		FUNC0(device->block);
		if ((device->features & DASD_FEATURE_USERAW)) {
			disk = device->block->gdp;
			FUNC5(&FUNC4(disk)->kobj, KOBJ_CHANGE);
			return 0;
		}
		disk = device->block->bdev->bd_disk;
		FUNC2(&piter, disk, DISK_PITER_INCL_PART0);
		while ((part = FUNC3(&piter)))
			FUNC5(&FUNC6(part)->kobj, KOBJ_CHANGE);
		FUNC1(&piter);
	}
	return 0;
}