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
typedef  int u32 ;
struct super_block {int dummy; } ;
struct fs_info_t {int clu_srch_ptr; int num_clusters; scalar_t__ used_clusters; } ;
struct chain_t {int dir; int flags; int /*<<< orphan*/  size; } ;
typedef  int s32 ;
struct TYPE_2__ {struct fs_info_t fs_info; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (struct super_block*,int,int) ; 
 scalar_t__ FFS_SUCCESS ; 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int,int) ; 
 scalar_t__ FUNC5 (struct super_block*,int) ; 
 int FUNC6 (struct super_block*,int) ; 

s32 FUNC7(struct super_block *sb, s32 num_alloc,
			struct chain_t *p_chain)
{
	s32 num_clusters = 0;
	u32 hint_clu, new_clu, last_clu = FUNC0(~0);
	struct fs_info_t *p_fs = &(FUNC1(sb)->fs_info);

	hint_clu = p_chain->dir;
	if (hint_clu == FUNC0(~0)) {
		hint_clu = FUNC6(sb, p_fs->clu_srch_ptr - 2);
		if (hint_clu == FUNC0(~0))
			return 0;
	} else if (hint_clu >= p_fs->num_clusters) {
		hint_clu = 2;
		p_chain->flags = 0x01;
	}

	FUNC3(sb);

	p_chain->dir = FUNC0(~0);

	while ((new_clu = FUNC6(sb, hint_clu - 2)) != FUNC0(~0)) {
		if (new_clu != hint_clu) {
			if (p_chain->flags == 0x03) {
				FUNC4(sb, p_chain->dir,
							 num_clusters);
				p_chain->flags = 0x01;
			}
		}

		if (FUNC5(sb, new_clu - 2) != FFS_SUCCESS)
			return -1;

		num_clusters++;

		if (p_chain->flags == 0x01) {
			if (FUNC2(sb, new_clu, FUNC0(~0)) < 0)
				return -1;
		}

		if (p_chain->dir == FUNC0(~0)) {
			p_chain->dir = new_clu;
		} else {
			if (p_chain->flags == 0x01) {
				if (FUNC2(sb, last_clu, new_clu) < 0)
					return -1;
			}
		}
		last_clu = new_clu;

		if ((--num_alloc) == 0) {
			p_fs->clu_srch_ptr = hint_clu;
			if (p_fs->used_clusters != UINT_MAX)
				p_fs->used_clusters += num_clusters;

			p_chain->size += num_clusters;
			return num_clusters;
		}

		hint_clu = new_clu + 1;
		if (hint_clu >= p_fs->num_clusters) {
			hint_clu = 2;

			if (p_chain->flags == 0x03) {
				FUNC4(sb, p_chain->dir,
							 num_clusters);
				p_chain->flags = 0x01;
			}
		}
	}

	p_fs->clu_srch_ptr = hint_clu;
	if (p_fs->used_clusters != UINT_MAX)
		p_fs->used_clusters += num_clusters;

	p_chain->size += num_clusters;
	return num_clusters;
}