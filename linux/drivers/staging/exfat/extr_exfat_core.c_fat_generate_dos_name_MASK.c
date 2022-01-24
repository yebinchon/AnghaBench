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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct fs_info_t {int dentries_in_root; int dentries_per_clu; TYPE_1__* fs_func; scalar_t__ dev_ejected; } ;
struct dos_name_t {int /*<<< orphan*/  name; } ;
struct dos_dentry_t {char* name; } ;
struct dentry_t {int dummy; } ;
struct chain_t {scalar_t__ dir; int /*<<< orphan*/  flags; } ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  bmap ;
struct TYPE_4__ {struct fs_info_t fs_info; } ;
struct TYPE_3__ {scalar_t__ (* get_entry_type ) (struct dentry_t*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (struct super_block*,scalar_t__,scalar_t__*) ; 
 int FFS_FILEEXIST ; 
 int FFS_MEDIAERR ; 
 int FFS_SUCCESS ; 
 scalar_t__ TYPE_DIR ; 
 scalar_t__ TYPE_FILE ; 
 scalar_t__ TYPE_UNUSED ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 scalar_t__ FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct super_block*,struct chain_t*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct dentry_t*) ; 

s32 FUNC9(struct super_block *sb, struct chain_t *p_dir,
			  struct dos_name_t *p_dosname)
{
	int i, j, count = 0;
	bool count_begin = false;
	s32 dentries_per_clu;
	u32 type;
	u8 bmap[128/* 1 ~ 1023 */];
	struct chain_t clu;
	struct dos_dentry_t *ep;
	struct fs_info_t *p_fs = &(FUNC1(sb)->fs_info);

	FUNC7(bmap, 0, sizeof(bmap));
	FUNC3(bmap, 0);

	if (p_dir->dir == FUNC0(0)) /* FAT16 root_dir */
		dentries_per_clu = p_fs->dentries_in_root;
	else
		dentries_per_clu = p_fs->dentries_per_clu;

	clu.dir = p_dir->dir;
	clu.flags = p_dir->flags;

	while (clu.dir != FUNC0(~0)) {
		if (p_fs->dev_ejected)
			break;

		for (i = 0; i < dentries_per_clu; i++) {
			ep = (struct dos_dentry_t *)FUNC6(sb, &clu,
								     i, NULL);
			if (!ep)
				return FFS_MEDIAERR;

			type = p_fs->fs_func->get_entry_type((struct dentry_t *)
							     ep);

			if (type == TYPE_UNUSED)
				break;
			if ((type != TYPE_FILE) && (type != TYPE_DIR))
				continue;

			count = 0;
			count_begin = false;

			for (j = 0; j < 8; j++) {
				if (ep->name[j] == ' ')
					break;

				if (ep->name[j] == '~') {
					count_begin = true;
				} else if (count_begin) {
					if ((ep->name[j] >= '0') &&
					    (ep->name[j] <= '9')) {
						count = count * 10 +
							(ep->name[j] - '0');
					} else {
						count = 0;
						count_begin = false;
					}
				}
			}

			if ((count > 0) && (count < 1024))
				FUNC3(bmap, count);
		}

		if (p_dir->dir == FUNC0(0))
			break; /* FAT16 root_dir */

		if (FUNC2(sb, clu.dir, &clu.dir) != 0)
			return FFS_MEDIAERR;
	}

	count = 0;
	for (i = 0; i < 128; i++) {
		if (bmap[i] != 0xFF) {
			for (j = 0; j < 8; j++) {
				if (FUNC4(&bmap[i], j) == 0) {
					count = (i << 3) + j;
					break;
				}
			}
			if (count != 0)
				break;
		}
	}

	if ((count == 0) || (count >= 1024))
		return FFS_FILEEXIST;
	FUNC5(p_dosname->name, count);

	/* Now dos_name has DOS~????.EXT */
	return FFS_SUCCESS;
}