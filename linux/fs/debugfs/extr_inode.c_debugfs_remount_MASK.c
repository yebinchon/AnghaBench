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
struct super_block {struct debugfs_fs_info* s_fs_info; } ;
struct debugfs_fs_info {int /*<<< orphan*/  mount_opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 

__attribute__((used)) static int FUNC3(struct super_block *sb, int *flags, char *data)
{
	int err;
	struct debugfs_fs_info *fsi = sb->s_fs_info;

	FUNC2(sb);
	err = FUNC1(data, &fsi->mount_opts);
	if (err)
		goto fail;

	FUNC0(sb);

fail:
	return err;
}