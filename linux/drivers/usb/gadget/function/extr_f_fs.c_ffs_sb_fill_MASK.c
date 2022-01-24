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
struct super_block {int s_time_gran; int /*<<< orphan*/  s_root; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_blocksize_bits; int /*<<< orphan*/  s_blocksize; struct ffs_data* s_fs_info; } ;
struct inode {int dummy; } ;
struct fs_context {struct ffs_sb_fill_data* fs_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  mode; } ;
struct ffs_sb_fill_data {TYPE_1__ perms; int /*<<< orphan*/  root_mode; struct ffs_data* ffs_data; } ;
struct ffs_data {struct super_block* sb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNCTIONFS_MAGIC ; 
 int /*<<< orphan*/  PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  ffs_ep0_operations ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,struct ffs_data*,int /*<<< orphan*/ *) ; 
 struct inode* FUNC3 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ffs_sb_operations ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 
 int /*<<< orphan*/  simple_dir_operations ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb, struct fs_context *fc)
{
	struct ffs_sb_fill_data *data = fc->fs_private;
	struct inode	*inode;
	struct ffs_data	*ffs = data->ffs_data;

	FUNC0();

	ffs->sb              = sb;
	data->ffs_data       = NULL;
	sb->s_fs_info        = ffs;
	sb->s_blocksize      = PAGE_SIZE;
	sb->s_blocksize_bits = PAGE_SHIFT;
	sb->s_magic          = FUNCTIONFS_MAGIC;
	sb->s_op             = &ffs_sb_operations;
	sb->s_time_gran      = 1;

	/* Root inode */
	data->perms.mode = data->root_mode;
	inode = FUNC3(sb, NULL,
				  &simple_dir_operations,
				  &simple_dir_inode_operations,
				  &data->perms);
	sb->s_root = FUNC1(inode);
	if (FUNC4(!sb->s_root))
		return -ENOMEM;

	/* EP0 file */
	if (FUNC4(!FUNC2(sb, "ep0", ffs,
					 &ffs_ep0_operations)))
		return -ENOMEM;

	return 0;
}