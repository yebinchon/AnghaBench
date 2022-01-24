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
struct super_block {int dummy; } ;
struct fs_info_t {scalar_t__ vol_type; int /*<<< orphan*/  v_sem; scalar_t__ dev_ejected; } ;
struct TYPE_2__ {struct fs_info_t fs_info; } ;

/* Variables and functions */
 scalar_t__ EXFAT ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int FFS_MEDIAERR ; 
 int FFS_SUCCESS ; 
 int /*<<< orphan*/  VOL_CLEAN ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  z_sem ; 

__attribute__((used)) static int FUNC12(struct super_block *sb)
{
	struct fs_info_t *p_fs = &(FUNC0(sb)->fs_info);
	int err = FFS_SUCCESS;

	FUNC10("[EXFAT] trying to unmount...\n");

	FUNC5(&z_sem);

	/* acquire the lock for file system critical section */
	FUNC5(&p_fs->v_sem);

	FUNC9(sb, false);
	FUNC8(sb, VOL_CLEAN);

	if (p_fs->vol_type == EXFAT) {
		FUNC7(sb);
		FUNC6(sb);
	}

	FUNC1(sb);
	FUNC3(sb);

	/* close the block device */
	FUNC2(sb);

	if (p_fs->dev_ejected) {
		FUNC10("[EXFAT] unmounted with media errors. Device is already ejected.\n");
		err = FFS_MEDIAERR;
	}

	FUNC4(sb);

	/* release the lock for file system critical section */
	FUNC11(&p_fs->v_sem);
	FUNC11(&z_sem);

	FUNC10("[EXFAT] unmounted successfully\n");

	return err;
}