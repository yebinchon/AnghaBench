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
struct super_block {int dummy; } ;
struct buf_cache_t {int /*<<< orphan*/  buf_bh; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 struct buf_cache_t* FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct super_block *sb, sector_t sec)
{
	struct buf_cache_t *bp;

	bp = FUNC0(sb, sec);
	if (bp)
		FUNC1(sb, sec, bp->buf_bh, 0);
}