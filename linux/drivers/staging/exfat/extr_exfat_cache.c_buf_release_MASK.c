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
struct super_block {int dummy; } ;
struct fs_info_t {int /*<<< orphan*/  buf_cache_lru_list; } ;
struct buf_cache_t {int drv; int /*<<< orphan*/ * buf_bh; scalar_t__ flag; int /*<<< orphan*/  sec; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_2__ {struct fs_info_t fs_info; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  b_sem ; 
 struct buf_cache_t* FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct buf_cache_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct buf_cache_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct super_block *sb, sector_t sec)
{
	struct buf_cache_t *bp;
	struct fs_info_t *p_fs = &(FUNC0(sb)->fs_info);

	FUNC3(&b_sem);

	bp = FUNC2(sb, sec);
	if (FUNC4(bp)) {
		bp->drv = -1;
		bp->sec = ~0;
		bp->flag = 0;

		if (bp->buf_bh) {
			FUNC1(bp->buf_bh);
			bp->buf_bh = NULL;
		}

		FUNC5(bp, &p_fs->buf_cache_lru_list);
	}

	FUNC6(&b_sem);
}