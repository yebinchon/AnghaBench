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
struct buf_cache_t {int /*<<< orphan*/  flag; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOCKBIT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned long long) ; 
 int /*<<< orphan*/  b_sem ; 
 struct buf_cache_t* FUNC1 (struct super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct buf_cache_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct super_block *sb, sector_t sec)
{
	struct buf_cache_t *bp;

	FUNC2(&b_sem);

	bp = FUNC1(sb, sec);
	if (FUNC3(bp))
		bp->flag &= ~(LOCKBIT);

	FUNC0(!bp, "[EXFAT] failed to find buffer_cache(sector:%llu).\n",
	     (unsigned long long)sec);

	FUNC4(&b_sem);
}