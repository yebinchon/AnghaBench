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
struct pts_mount_opts {scalar_t__ mode; scalar_t__ ptmxmode; scalar_t__ max; int /*<<< orphan*/  gid; scalar_t__ setgid; int /*<<< orphan*/  uid; scalar_t__ setuid; } ;
struct pts_fs_info {struct pts_mount_opts mount_opts; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 struct pts_fs_info* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NR_UNIX98_PTY_MAX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct seq_file *seq, struct dentry *root)
{
	struct pts_fs_info *fsi = FUNC0(root->d_sb);
	struct pts_mount_opts *opts = &fsi->mount_opts;

	if (opts->setuid)
		FUNC3(seq, ",uid=%u",
			   FUNC2(&init_user_ns, opts->uid));
	if (opts->setgid)
		FUNC3(seq, ",gid=%u",
			   FUNC1(&init_user_ns, opts->gid));
	FUNC3(seq, ",mode=%03o", opts->mode);
	FUNC3(seq, ",ptmxmode=%03o", opts->ptmxmode);
	if (opts->max < NR_UNIX98_PTY_MAX)
		FUNC3(seq, ",max=%d", opts->max);

	return 0;
}