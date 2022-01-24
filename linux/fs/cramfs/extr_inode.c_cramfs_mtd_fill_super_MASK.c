#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {TYPE_1__* s_mtd; struct cramfs_sb_info* s_fs_info; } ;
struct fs_context {int dummy; } ;
struct cramfs_super {int /*<<< orphan*/  root; } ;
struct cramfs_sb_info {int mtd_point_size; int size; int /*<<< orphan*/  linear_phys_addr; int /*<<< orphan*/  linear_virt_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODATA ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int FUNC0 (struct super_block*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct super_block*,struct fs_context*,struct cramfs_super*) ; 
 struct cramfs_sb_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC7(struct super_block *sb, struct fs_context *fc)
{
	struct cramfs_sb_info *sbi;
	struct cramfs_super super;
	int err;

	sbi = FUNC2(sizeof(struct cramfs_sb_info), GFP_KERNEL);
	if (!sbi)
		return -ENOMEM;
	sb->s_fs_info = sbi;

	/* Map only one page for now.  Will remap it when fs size is known. */
	err = FUNC3(sb->s_mtd, 0, PAGE_SIZE, &sbi->mtd_point_size,
			&sbi->linear_virt_addr, &sbi->linear_phys_addr);
	if (err || sbi->mtd_point_size != PAGE_SIZE) {
		FUNC5("unable to get direct memory access to mtd:%s\n",
		       sb->s_mtd->name);
		return err ? : -ENODATA;
	}

	FUNC6("checking physical address %pap for linear cramfs image\n",
		sbi->linear_phys_addr);
	err = FUNC1(sb, fc, &super);
	if (err)
		return err;

	/* Remap the whole filesystem now */
	FUNC6("linear cramfs image on mtd:%s appears to be %lu KB in size\n",
		sb->s_mtd->name, sbi->size/1024);
	FUNC4(sb->s_mtd, 0, PAGE_SIZE);
	err = FUNC3(sb->s_mtd, 0, sbi->size, &sbi->mtd_point_size,
			&sbi->linear_virt_addr, &sbi->linear_phys_addr);
	if (err || sbi->mtd_point_size != sbi->size) {
		FUNC5("unable to get direct memory access to mtd:%s\n",
		       sb->s_mtd->name);
		return err ? : -ENODATA;
	}

	return FUNC0(sb, &super.root);
}