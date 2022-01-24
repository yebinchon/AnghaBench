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
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct fs_info_t {scalar_t__ root_dir; int dentries_per_clu; TYPE_1__* fs_func; scalar_t__ dev_ejected; } ;
struct dentry_t {int dummy; } ;
struct chain_t {scalar_t__ dir; int flags; } ;
struct case_dentry_t {int /*<<< orphan*/  checksum; int /*<<< orphan*/  size; int /*<<< orphan*/  start_clu; } ;
struct bd_info_t {scalar_t__ sector_size_bits; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  scalar_t__ s32 ;
struct TYPE_4__ {struct bd_info_t bd_info; struct fs_info_t fs_info; } ;
struct TYPE_3__ {scalar_t__ (* get_entry_type ) (struct dentry_t*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (struct super_block*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FFS_MEDIAERR ; 
 scalar_t__ FFS_SUCCESS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ TYPE_UNUSED ; 
 scalar_t__ TYPE_UPCASE ; 
 scalar_t__ FUNC6 (struct super_block*) ; 
 scalar_t__ FUNC7 (struct super_block*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (struct super_block*,struct chain_t*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct dentry_t*) ; 

s32 FUNC10(struct super_block *sb)
{
	int i;
	u32 tbl_clu, tbl_size;
	sector_t sector;
	u32 type, num_sectors;
	struct chain_t clu;
	struct case_dentry_t *ep;
	struct fs_info_t *p_fs = &(FUNC1(sb)->fs_info);
	struct bd_info_t *p_bd = &(FUNC1(sb)->bd_info);

	clu.dir = p_fs->root_dir;
	clu.flags = 0x01;

	if (p_fs->dev_ejected)
		return FFS_MEDIAERR;

	while (clu.dir != FUNC0(~0)) {
		for (i = 0; i < p_fs->dentries_per_clu; i++) {
			ep = (struct case_dentry_t *)FUNC8(sb, &clu,
								      i, NULL);
			if (!ep)
				return FFS_MEDIAERR;

			type = p_fs->fs_func->get_entry_type((struct dentry_t *)ep);

			if (type == TYPE_UNUSED)
				break;
			if (type != TYPE_UPCASE)
				continue;

			tbl_clu  = FUNC3(ep->start_clu);
			tbl_size = (u32)FUNC4(ep->size);

			sector = FUNC5(tbl_clu);
			num_sectors = ((tbl_size - 1) >> p_bd->sector_size_bits) + 1;
			if (FUNC7(sb, sector, num_sectors,
						FUNC3(ep->checksum)) != FFS_SUCCESS)
				break;
			return FFS_SUCCESS;
		}
		if (FUNC2(sb, clu.dir, &clu.dir) != 0)
			return FFS_MEDIAERR;
	}
	/* load default upcase table */
	return FUNC6(sb);
}