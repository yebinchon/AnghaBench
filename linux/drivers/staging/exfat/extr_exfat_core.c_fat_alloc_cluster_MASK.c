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
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct fs_info_t {scalar_t__ clu_srch_ptr; scalar_t__ num_clusters; scalar_t__ used_clusters; } ;
struct chain_t {scalar_t__ dir; } ;
typedef  int s32 ;
struct TYPE_2__ {struct fs_info_t fs_info; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (struct super_block*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC3 (struct super_block*,scalar_t__,scalar_t__) ; 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 

s32 FUNC5(struct super_block *sb, s32 num_alloc,
		      struct chain_t *p_chain)
{
	int i, num_clusters = 0;
	u32 new_clu, last_clu = FUNC0(~0), read_clu;
	struct fs_info_t *p_fs = &(FUNC1(sb)->fs_info);

	new_clu = p_chain->dir;
	if (new_clu == FUNC0(~0))
		new_clu = p_fs->clu_srch_ptr;
	else if (new_clu >= p_fs->num_clusters)
		new_clu = 2;

	FUNC4(sb);

	p_chain->dir = FUNC0(~0);

	for (i = 2; i < p_fs->num_clusters; i++) {
		if (FUNC2(sb, new_clu, &read_clu) != 0)
			return -1;

		if (read_clu == FUNC0(0)) {
			if (FUNC3(sb, new_clu, FUNC0(~0)) < 0)
				return -1;
			num_clusters++;

			if (p_chain->dir == FUNC0(~0)) {
				p_chain->dir = new_clu;
			} else {
				if (FUNC3(sb, last_clu, new_clu) < 0)
					return -1;
			}

			last_clu = new_clu;

			if ((--num_alloc) == 0) {
				p_fs->clu_srch_ptr = new_clu;
				if (p_fs->used_clusters != UINT_MAX)
					p_fs->used_clusters += num_clusters;

				return num_clusters;
			}
		}
		if ((++new_clu) >= p_fs->num_clusters)
			new_clu = 2;
	}

	p_fs->clu_srch_ptr = new_clu;
	if (p_fs->used_clusters != UINT_MAX)
		p_fs->used_clusters += num_clusters;

	return num_clusters;
}