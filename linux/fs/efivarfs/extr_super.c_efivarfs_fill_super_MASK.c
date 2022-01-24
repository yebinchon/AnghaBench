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
struct super_block {int s_time_gran; struct dentry* s_root; int /*<<< orphan*/ * s_d_op; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_blocksize_bits; int /*<<< orphan*/  s_blocksize; int /*<<< orphan*/  s_maxbytes; } ;
struct inode {int /*<<< orphan*/ * i_op; } ;
struct fs_context {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFIVARFS_MAGIC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_LFS_FILESIZE ; 
 int /*<<< orphan*/  PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC2 (struct inode*) ; 
 int FUNC3 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  efivarfs_callback ; 
 int /*<<< orphan*/  efivarfs_d_ops ; 
 int /*<<< orphan*/  efivarfs_destroy ; 
 int /*<<< orphan*/  efivarfs_dir_inode_operations ; 
 struct inode* FUNC4 (struct super_block*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  efivarfs_list ; 
 int /*<<< orphan*/  efivarfs_ops ; 

__attribute__((used)) static int FUNC5(struct super_block *sb, struct fs_context *fc)
{
	struct inode *inode = NULL;
	struct dentry *root;
	int err;

	sb->s_maxbytes          = MAX_LFS_FILESIZE;
	sb->s_blocksize         = PAGE_SIZE;
	sb->s_blocksize_bits    = PAGE_SHIFT;
	sb->s_magic             = EFIVARFS_MAGIC;
	sb->s_op                = &efivarfs_ops;
	sb->s_d_op		= &efivarfs_d_ops;
	sb->s_time_gran         = 1;

	inode = FUNC4(sb, NULL, S_IFDIR | 0755, 0, true);
	if (!inode)
		return -ENOMEM;
	inode->i_op = &efivarfs_dir_inode_operations;

	root = FUNC2(inode);
	sb->s_root = root;
	if (!root)
		return -ENOMEM;

	FUNC0(&efivarfs_list);

	err = FUNC3(efivarfs_callback, (void *)sb, true, &efivarfs_list);
	if (err)
		FUNC1(efivarfs_destroy, &efivarfs_list, NULL, NULL);

	return err;
}