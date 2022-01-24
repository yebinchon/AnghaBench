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
struct seq_file {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct befs_mount_options {scalar_t__ debug; scalar_t__ iocharset; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct befs_sb_info {struct befs_mount_options mount_opts; } ;

/* Variables and functions */
 struct befs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct seq_file *m, struct dentry *root)
{
	struct befs_sb_info *befs_sb = FUNC0(root->d_sb);
	struct befs_mount_options *opts = &befs_sb->mount_opts;

	if (!FUNC6(opts->uid, GLOBAL_ROOT_UID))
		FUNC4(m, ",uid=%u",
			   FUNC2(&init_user_ns, opts->uid));
	if (!FUNC3(opts->gid, GLOBAL_ROOT_GID))
		FUNC4(m, ",gid=%u",
			   FUNC1(&init_user_ns, opts->gid));
	if (opts->iocharset)
		FUNC4(m, ",charset=%s", opts->iocharset);
	if (opts->debug)
		FUNC5(m, ",debug");
	return 0;
}