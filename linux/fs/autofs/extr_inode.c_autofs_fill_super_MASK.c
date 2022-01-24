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
struct super_block {int s_blocksize; int s_blocksize_bits; int s_time_gran; struct autofs_sb_info* s_fs_info; struct dentry* s_root; int /*<<< orphan*/ * s_d_op; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; } ;
struct inode {int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; } ;
struct file {int dummy; } ;
struct dentry {struct autofs_info* d_fsdata; } ;
struct autofs_sb_info {int pipefd; scalar_t__ version; scalar_t__ min_proto; scalar_t__ max_proto; int /*<<< orphan*/ * oz_pgrp; int /*<<< orphan*/  flags; struct file* pipe; int /*<<< orphan*/  type; scalar_t__ sub_version; int /*<<< orphan*/  expiring_list; int /*<<< orphan*/  active_list; int /*<<< orphan*/  lookup_lock; int /*<<< orphan*/ * queues; int /*<<< orphan*/  fs_lock; int /*<<< orphan*/  pipe_mutex; int /*<<< orphan*/  wq_mutex; struct super_block* sb; scalar_t__ exp_timeout; int /*<<< orphan*/  magic; } ;
struct autofs_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ AUTOFS_MAX_PROTO_VERSION ; 
 scalar_t__ AUTOFS_MIN_PROTO_VERSION ; 
 scalar_t__ AUTOFS_PROTO_SUBVERSION ; 
 int /*<<< orphan*/  AUTOFS_SBI_CATATONIC ; 
 int /*<<< orphan*/  AUTOFS_SBI_MAGIC ; 
 int /*<<< orphan*/  AUTOFS_SUPER_MAGIC ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PIDTYPE_PGID ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  autofs_dentry_operations ; 
 int /*<<< orphan*/  autofs_dir_inode_operations ; 
 int /*<<< orphan*/  FUNC2 (struct autofs_info*) ; 
 struct inode* FUNC3 (struct super_block*,int) ; 
 struct autofs_info* FUNC4 (struct autofs_sb_info*) ; 
 int FUNC5 (struct file*) ; 
 int /*<<< orphan*/  autofs_root_operations ; 
 int /*<<< orphan*/  autofs_sops ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 struct dentry* FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 struct file* FUNC9 (int) ; 
 int /*<<< orphan*/ * FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct file*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct autofs_sb_info*) ; 
 struct autofs_sb_info* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (void*,struct inode*,int*,int*,struct autofs_sb_info*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

int FUNC23(struct super_block *s, void *data, int silent)
{
	struct inode *root_inode;
	struct dentry *root;
	struct file *pipe;
	struct autofs_sb_info *sbi;
	struct autofs_info *ino;
	int pgrp = 0;
	bool pgrp_set = false;
	int ret = -EINVAL;

	sbi = FUNC14(sizeof(*sbi), GFP_KERNEL);
	if (!sbi)
		return -ENOMEM;
	FUNC18("starting up, sbi = %p\n", sbi);

	s->s_fs_info = sbi;
	sbi->magic = AUTOFS_SBI_MAGIC;
	sbi->pipefd = -1;
	sbi->pipe = NULL;
	sbi->exp_timeout = 0;
	sbi->oz_pgrp = NULL;
	sbi->sb = s;
	sbi->version = 0;
	sbi->sub_version = 0;
	sbi->flags = AUTOFS_SBI_CATATONIC;
	FUNC21(&sbi->type);
	sbi->min_proto = 0;
	sbi->max_proto = 0;
	FUNC15(&sbi->wq_mutex);
	FUNC15(&sbi->pipe_mutex);
	FUNC22(&sbi->fs_lock);
	sbi->queues = NULL;
	FUNC22(&sbi->lookup_lock);
	FUNC0(&sbi->active_list);
	FUNC0(&sbi->expiring_list);
	s->s_blocksize = 1024;
	s->s_blocksize_bits = 10;
	s->s_magic = AUTOFS_SUPER_MAGIC;
	s->s_op = &autofs_sops;
	s->s_d_op = &autofs_dentry_operations;
	s->s_time_gran = 1;

	/*
	 * Get the root inode and dentry, but defer checking for errors.
	 */
	ino = FUNC4(sbi);
	if (!ino) {
		ret = -ENOMEM;
		goto fail_free;
	}
	root_inode = FUNC3(s, S_IFDIR | 0755);
	root = FUNC7(root_inode);
	if (!root) {
		ret = -ENOMEM;
		goto fail_ino;
	}
	pipe = NULL;

	root->d_fsdata = ino;

	/* Can this call block? */
	if (FUNC16(data, root_inode, &pgrp, &pgrp_set, sbi)) {
		FUNC19("called with bogus options\n");
		goto fail_dput;
	}

	/* Test versions first */
	if (sbi->max_proto < AUTOFS_MIN_PROTO_VERSION ||
	    sbi->min_proto > AUTOFS_MAX_PROTO_VERSION) {
		FUNC19("kernel does not match daemon version "
		       "daemon (%d, %d) kernel (%d, %d)\n",
		       sbi->min_proto, sbi->max_proto,
		       AUTOFS_MIN_PROTO_VERSION, AUTOFS_MAX_PROTO_VERSION);
		goto fail_dput;
	}

	/* Establish highest kernel protocol version */
	if (sbi->max_proto > AUTOFS_MAX_PROTO_VERSION)
		sbi->version = AUTOFS_MAX_PROTO_VERSION;
	else
		sbi->version = sbi->max_proto;
	sbi->sub_version = AUTOFS_PROTO_SUBVERSION;

	if (pgrp_set) {
		sbi->oz_pgrp = FUNC10(pgrp);
		if (!sbi->oz_pgrp) {
			FUNC19("could not find process group %d\n",
				pgrp);
			goto fail_dput;
		}
	} else {
		sbi->oz_pgrp = FUNC12(current, PIDTYPE_PGID);
	}

	if (FUNC6(sbi->type))
		FUNC1(root);

	root_inode->i_fop = &autofs_root_operations;
	root_inode->i_op = &autofs_dir_inode_operations;

	FUNC18("pipe fd = %d, pgrp = %u\n",
		 sbi->pipefd, FUNC17(sbi->oz_pgrp));
	pipe = FUNC9(sbi->pipefd);

	if (!pipe) {
		FUNC19("could not open pipe file descriptor\n");
		goto fail_put_pid;
	}
	ret = FUNC5(pipe);
	if (ret < 0)
		goto fail_fput;
	sbi->pipe = pipe;
	sbi->flags &= ~AUTOFS_SBI_CATATONIC;

	/*
	 * Success! Install the root dentry now to indicate completion.
	 */
	s->s_root = root;
	return 0;

	/*
	 * Failure ... clean up.
	 */
fail_fput:
	FUNC19("pipe file descriptor does not contain proper ops\n");
	FUNC11(pipe);
fail_put_pid:
	FUNC20(sbi->oz_pgrp);
fail_dput:
	FUNC8(root);
	goto fail_free;
fail_ino:
	FUNC2(ino);
fail_free:
	FUNC13(sbi);
	s->s_fs_info = NULL;
	return ret;
}