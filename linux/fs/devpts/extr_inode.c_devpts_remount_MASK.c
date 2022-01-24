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
struct super_block {int dummy; } ;
struct pts_mount_opts {int dummy; } ;
struct pts_fs_info {struct pts_mount_opts mount_opts; } ;

/* Variables and functions */
 struct pts_fs_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  PARSE_REMOUNT ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,struct pts_mount_opts*) ; 
 int /*<<< orphan*/  FUNC2 (struct pts_fs_info*) ; 

__attribute__((used)) static int FUNC3(struct super_block *sb, int *flags, char *data)
{
	int err;
	struct pts_fs_info *fsi = FUNC0(sb);
	struct pts_mount_opts *opts = &fsi->mount_opts;

	err = FUNC1(data, PARSE_REMOUNT, opts);

	/*
	 * parse_mount_options() restores options to default values
	 * before parsing and may have changed ptmxmode. So, update the
	 * mode in the inode too. Bogus options don't fail the remount,
	 * so do this even on error return.
	 */
	FUNC2(fsi);

	return err;
}