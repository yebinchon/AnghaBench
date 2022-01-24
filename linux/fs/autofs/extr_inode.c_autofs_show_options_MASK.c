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
struct seq_file {int dummy; } ;
struct inode {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct dentry {TYPE_2__* d_sb; } ;
struct autofs_sb_info {int pipefd; int exp_timeout; int min_proto; int max_proto; int flags; scalar_t__ pipe; int /*<<< orphan*/  type; int /*<<< orphan*/  oz_pgrp; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_root; } ;
struct TYPE_3__ {int i_ino; } ;

/* Variables and functions */
 int AUTOFS_SBI_IGNORE ; 
 int AUTOFS_SBI_STRICTEXPIRE ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int HZ ; 
 struct autofs_sb_info* FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct seq_file *m, struct dentry *root)
{
	struct autofs_sb_info *sbi = FUNC0(root->d_sb);
	struct inode *root_inode = FUNC3(root->d_sb->s_root);

	if (!sbi)
		return 0;

	FUNC9(m, ",fd=%d", sbi->pipefd);
	if (!FUNC11(root_inode->i_uid, GLOBAL_ROOT_UID))
		FUNC9(m, ",uid=%u",
			FUNC6(&init_user_ns, root_inode->i_uid));
	if (!FUNC7(root_inode->i_gid, GLOBAL_ROOT_GID))
		FUNC9(m, ",gid=%u",
			FUNC5(&init_user_ns, root_inode->i_gid));
	FUNC9(m, ",pgrp=%d", FUNC8(sbi->oz_pgrp));
	FUNC9(m, ",timeout=%lu", sbi->exp_timeout/HZ);
	FUNC9(m, ",minproto=%d", sbi->min_proto);
	FUNC9(m, ",maxproto=%d", sbi->max_proto);

	if (FUNC2(sbi->type))
		FUNC10(m, ",offset");
	else if (FUNC1(sbi->type))
		FUNC10(m, ",direct");
	else
		FUNC10(m, ",indirect");
	if (sbi->flags & AUTOFS_SBI_STRICTEXPIRE)
		FUNC10(m, ",strictexpire");
	if (sbi->flags & AUTOFS_SBI_IGNORE)
		FUNC10(m, ",ignore");
#ifdef CONFIG_CHECKPOINT_RESTORE
	if (sbi->pipe)
		seq_printf(m, ",pipe_ino=%ld", file_inode(sbi->pipe)->i_ino);
	else
		seq_puts(m, ",pipe_ino=-1");
#endif
	return 0;
}