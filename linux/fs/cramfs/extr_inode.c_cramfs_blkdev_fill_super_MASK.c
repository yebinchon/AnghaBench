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
struct super_block {struct cramfs_sb_info* s_fs_info; } ;
struct fs_context {int dummy; } ;
struct cramfs_super {int /*<<< orphan*/  root; } ;
struct cramfs_sb_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int READ_BUFFERS ; 
 int* buffer_blocknr ; 
 int FUNC0 (struct super_block*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct super_block*,struct fs_context*,struct cramfs_super*) ; 
 struct cramfs_sb_info* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct super_block *sb, struct fs_context *fc)
{
	struct cramfs_sb_info *sbi;
	struct cramfs_super super;
	int i, err;

	sbi = FUNC2(sizeof(struct cramfs_sb_info), GFP_KERNEL);
	if (!sbi)
		return -ENOMEM;
	sb->s_fs_info = sbi;

	/* Invalidate the read buffers on mount: think disk change.. */
	for (i = 0; i < READ_BUFFERS; i++)
		buffer_blocknr[i] = -1;

	err = FUNC1(sb, fc, &super);
	if (err)
		return err;
	return FUNC0(sb, &super.root);
}