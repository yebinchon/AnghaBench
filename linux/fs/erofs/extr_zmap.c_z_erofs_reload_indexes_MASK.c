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
struct z_erofs_maprecorder {int /*<<< orphan*/ * kaddr; struct erofs_map_blocks* map; TYPE_1__* inode; } ;
struct super_block {int dummy; } ;
struct page {int /*<<< orphan*/  index; } ;
struct erofs_map_blocks {struct page* mpage; } ;
typedef  int /*<<< orphan*/  erofs_blk_t ;
struct TYPE_2__ {struct super_block* i_sb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int FUNC1 (struct page*) ; 
 struct page* FUNC2 (struct super_block* const,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

__attribute__((used)) static int FUNC7(struct z_erofs_maprecorder *m,
				  erofs_blk_t eblk)
{
	struct super_block *const sb = m->inode->i_sb;
	struct erofs_map_blocks *const map = m->map;
	struct page *mpage = map->mpage;

	if (mpage) {
		if (mpage->index == eblk) {
			if (!m->kaddr)
				m->kaddr = FUNC3(mpage);
			return 0;
		}

		if (m->kaddr) {
			FUNC4(m->kaddr);
			m->kaddr = NULL;
		}
		FUNC5(mpage);
	}

	mpage = FUNC2(sb, eblk);
	if (FUNC0(mpage)) {
		map->mpage = NULL;
		return FUNC1(mpage);
	}
	m->kaddr = FUNC3(mpage);
	FUNC6(mpage);
	map->mpage = mpage;
	return 0;
}