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
typedef  int /*<<< orphan*/  u8 ;
struct super_block {int dummy; } ;
struct fs_info_t {int drv; int /*<<< orphan*/  buf_cache_lru_list; } ;
struct buf_cache_t {int drv; TYPE_1__* buf_bh; scalar_t__ flag; int /*<<< orphan*/  sec; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_4__ {struct fs_info_t fs_info; } ;
struct TYPE_3__ {int /*<<< orphan*/ * b_data; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct super_block*) ; 
 scalar_t__ FFS_SUCCESS ; 
 struct buf_cache_t* FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct buf_cache_t* FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,struct buf_cache_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct buf_cache_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct buf_cache_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct buf_cache_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct super_block*,int /*<<< orphan*/ ,TYPE_1__**,int) ; 

__attribute__((used)) static u8 *FUNC8(struct super_block *sb, sector_t sec)
{
	struct buf_cache_t *bp;
	struct fs_info_t *p_fs = &(FUNC0(sb)->fs_info);

	bp = FUNC1(sb, sec);
	if (bp) {
		FUNC6(bp, &p_fs->buf_cache_lru_list);
		return bp->buf_bh->b_data;
	}

	bp = FUNC2(sb, sec);

	FUNC4(bp);

	bp->drv = p_fs->drv;
	bp->sec = sec;
	bp->flag = 0;

	FUNC3(sb, bp);

	if (FUNC7(sb, sec, &bp->buf_bh, 1) != FFS_SUCCESS) {
		FUNC4(bp);
		bp->drv = -1;
		bp->sec = ~0;
		bp->flag = 0;
		bp->buf_bh = NULL;

		FUNC5(bp, &p_fs->buf_cache_lru_list);
		return NULL;
	}

	return bp->buf_bh->b_data;
}