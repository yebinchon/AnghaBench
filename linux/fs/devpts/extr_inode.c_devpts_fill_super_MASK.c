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
struct super_block {int s_blocksize; int s_blocksize_bits; int s_time_gran; int /*<<< orphan*/ * s_root; int /*<<< orphan*/  s_fs_info; int /*<<< orphan*/ * s_d_op; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_iflags; } ;
struct inode {int i_ino; int i_mode; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; } ;
struct TYPE_2__ {int /*<<< orphan*/  mount_opts; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  DEVPTS_SUPER_MAGIC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PARSE_MOUNT ; 
 int /*<<< orphan*/  SB_I_NODEV ; 
 int S_IFDIR ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 int S_IXUGO ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  devpts_sops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct super_block*) ; 
 struct inode* FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int) ; 
 int /*<<< orphan*/  simple_dentry_operations ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 
 int /*<<< orphan*/  simple_dir_operations ; 

__attribute__((used)) static int
FUNC10(struct super_block *s, void *data, int silent)
{
	struct inode *inode;
	int error;

	s->s_iflags &= ~SB_I_NODEV;
	s->s_blocksize = 1024;
	s->s_blocksize_bits = 10;
	s->s_magic = DEVPTS_SUPER_MAGIC;
	s->s_op = &devpts_sops;
	s->s_d_op = &simple_dentry_operations;
	s->s_time_gran = 1;

	error = -ENOMEM;
	s->s_fs_info = FUNC6(s);
	if (!s->s_fs_info)
		goto fail;

	error = FUNC7(data, PARSE_MOUNT, &FUNC0(s)->mount_opts);
	if (error)
		goto fail;

	error = -ENOMEM;
	inode = FUNC5(s);
	if (!inode)
		goto fail;
	inode->i_ino = 1;
	inode->i_mtime = inode->i_atime = inode->i_ctime = FUNC1(inode);
	inode->i_mode = S_IFDIR | S_IRUGO | S_IXUGO | S_IWUSR;
	inode->i_op = &simple_dir_inode_operations;
	inode->i_fop = &simple_dir_operations;
	FUNC9(inode, 2);

	s->s_root = FUNC2(inode);
	if (!s->s_root) {
		FUNC8("get root dentry failed\n");
		goto fail;
	}

	error = FUNC4(s);
	if (error)
		goto fail_dput;

	return 0;
fail_dput:
	FUNC3(s->s_root);
	s->s_root = NULL;
fail:
	return error;
}