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
struct ext2_group_desc {int /*<<< orphan*/  bg_used_dirs_count; } ;
struct TYPE_2__ {int s_groups_count; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 struct ext2_group_desc* FUNC1 (struct super_block*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

unsigned long FUNC3 (struct super_block * sb)
{
	unsigned long count = 0;
	int i;

	for (i = 0; i < FUNC0(sb)->s_groups_count; i++) {
		struct ext2_group_desc *gdp = FUNC1 (sb, i, NULL);
		if (!gdp)
			continue;
		count += FUNC2(gdp->bg_used_dirs_count);
	}
	return count;
}