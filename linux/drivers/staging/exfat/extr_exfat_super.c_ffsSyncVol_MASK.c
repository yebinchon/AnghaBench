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
struct fs_info_t {int /*<<< orphan*/  v_sem; scalar_t__ dev_ejected; } ;
struct TYPE_2__ {struct fs_info_t fs_info; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int FFS_MEDIAERR ; 
 int FFS_SUCCESS ; 
 int /*<<< orphan*/  VOL_CLEAN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb, bool do_sync)
{
	int err = FFS_SUCCESS;
	struct fs_info_t *p_fs = &(FUNC0(sb)->fs_info);

	/* acquire the lock for file system critical section */
	FUNC1(&p_fs->v_sem);

	/* synchronize the file system */
	FUNC3(sb, do_sync);
	FUNC2(sb, VOL_CLEAN);

	if (p_fs->dev_ejected)
		err = FFS_MEDIAERR;

	/* release the lock for file system critical section */
	FUNC4(&p_fs->v_sem);

	return err;
}