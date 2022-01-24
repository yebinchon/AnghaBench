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
struct super_block {int dummy; } ;
typedef  unsigned long ext2_fsblk_t ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_first_data_block; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct super_block*) ; 
 TYPE_2__* FUNC1 (struct super_block*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline ext2_fsblk_t
FUNC3(struct super_block *sb, unsigned long group_no)
{
	return group_no * (ext2_fsblk_t)FUNC0(sb) +
		FUNC2(FUNC1(sb)->s_es->s_first_data_block);
}