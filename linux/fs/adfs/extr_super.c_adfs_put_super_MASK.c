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
struct adfs_sb_info {int s_map_size; TYPE_1__* s_map; } ;
struct TYPE_2__ {int /*<<< orphan*/  dm_bh; } ;

/* Variables and functions */
 struct adfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct adfs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 

__attribute__((used)) static void FUNC4(struct super_block *sb)
{
	int i;
	struct adfs_sb_info *asb = FUNC0(sb);

	for (i = 0; i < asb->s_map_size; i++)
		FUNC1(asb->s_map[i].dm_bh);
	FUNC2(asb->s_map);
	FUNC3(asb, rcu);
}