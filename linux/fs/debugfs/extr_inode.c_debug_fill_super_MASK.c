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
struct tree_descr {char* member_0; } ;
struct super_block {struct debugfs_fs_info* s_fs_info; int /*<<< orphan*/ * s_d_op; int /*<<< orphan*/ * s_op; } ;
struct debugfs_fs_info {int /*<<< orphan*/  mount_opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUGFS_MAGIC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  debugfs_dops ; 
 int FUNC1 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  debugfs_super_operations ; 
 int /*<<< orphan*/  FUNC2 (struct debugfs_fs_info*) ; 
 struct debugfs_fs_info* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct super_block*,int /*<<< orphan*/ ,struct tree_descr const*) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb, void *data, int silent)
{
	static const struct tree_descr debug_files[] = {{""}};
	struct debugfs_fs_info *fsi;
	int err;

	fsi = FUNC3(sizeof(struct debugfs_fs_info), GFP_KERNEL);
	sb->s_fs_info = fsi;
	if (!fsi) {
		err = -ENOMEM;
		goto fail;
	}

	err = FUNC1(data, &fsi->mount_opts);
	if (err)
		goto fail;

	err  =  FUNC4(sb, DEBUGFS_MAGIC, debug_files);
	if (err)
		goto fail;

	sb->s_op = &debugfs_super_operations;
	sb->s_d_op = &debugfs_dops;

	FUNC0(sb);

	return 0;

fail:
	FUNC2(fsi);
	sb->s_fs_info = NULL;
	return err;
}