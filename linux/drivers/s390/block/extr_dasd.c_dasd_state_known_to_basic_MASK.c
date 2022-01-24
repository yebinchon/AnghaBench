#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dasd_device {int /*<<< orphan*/  state; int /*<<< orphan*/  debug_area; TYPE_2__* cdev; void* debugfs_dentry; int /*<<< orphan*/  profile; struct dasd_block* block; } ;
struct dasd_block {int /*<<< orphan*/  profile; void* debugfs_dentry; TYPE_1__* gdp; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  disk_name; } ;

/* Variables and functions */
 scalar_t__ DASD_PROFILE_ON ; 
 int /*<<< orphan*/  DASD_STATE_BASIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,char*) ; 
 int /*<<< orphan*/  DBF_EMERG ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int /*<<< orphan*/  dasd_debugfs_root_entry ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dasd_block*) ; 
 scalar_t__ dasd_global_profile_level ; 
 int /*<<< orphan*/  FUNC3 (void*,struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug_sprintf_view ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct dasd_device *device)
{
	struct dasd_block *block = device->block;
	int rc = 0;

	/* Allocate and register gendisk structure. */
	if (block) {
		rc = FUNC2(block);
		if (rc)
			return rc;
		block->debugfs_dentry =
			FUNC1(block->gdp->disk_name,
					   dasd_debugfs_root_entry);
		FUNC4(&block->profile, block->debugfs_dentry);
		if (dasd_global_profile_level == DASD_PROFILE_ON)
			FUNC5(&device->block->profile);
	}
	device->debugfs_dentry =
		FUNC1(FUNC9(&device->cdev->dev),
				   dasd_debugfs_root_entry);
	FUNC4(&device->profile, device->debugfs_dentry);
	FUNC3(device->debugfs_dentry, device);

	/* register 'device' debug area, used for all DBF_DEV_XXX calls */
	device->debug_area = FUNC6(FUNC9(&device->cdev->dev), 4, 1,
					    8 * sizeof(long));
	FUNC7(device->debug_area, &debug_sprintf_view);
	FUNC8(device->debug_area, DBF_WARNING);
	FUNC0(DBF_EMERG, device, "%s", "debug area created");

	device->state = DASD_STATE_BASIC;

	return rc;
}